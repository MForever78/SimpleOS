
char *_cwd;         // current working directory
char *_path;        // path env variable
char *_last_cmd;    // for command line argument
int _env_error;

void
env_init()
{
    _cwd = (char*)malloc(256);
    _path = (char*)malloc(256);
    _last_cmd = (char*)malloc(256);
    _env_error = 0;

    _last_cmd[0] = 0;
    strcpy(_cwd, "/");
    strcpy(_path, "/sys/");
}

int
get_env_error()
{ return _env_error; }

char *
get_path()
{ return _path; }

char *
get_cwd()
{ return _cwd; }

char *
get_cmd()
{ return _last_cmd; }

int
cwd_verify(char *cwd)
{
    int *fd;

    if (strlen(cwd) >= 256) { return -1; }                          // path too long
    fd = fat16_open_file(cwd);
    if (!fd)    {                                                   // dir not found
        return -2; 
    }
    if (!fat16_file_is_dir(fd)) {                                   // not a dir
        fat16_close_file(fd);
        return -3;
    }
    fat16_close_file(fd);
    return 0;
}

void
resolve_relative_path(char *original, char *relative)
{
    char *p;
    char *d;
    int original_length;

    if (!relative[0])   return;
    if (relative[0] == '/') {
        original[0] = '/';
        original[1] = 0;
    }

    p = relative;
    while (*p) {
        original_length = strlen(original);
        if (original[original_length-1] != '/') {
            original[original_length] = '/';
            original[original_length + 1] = 0;
        }

        d = p;
        while (*d && *d != '/') ++d;
        if (d == p) { }
        else if (strncmp(p, ".", d - p) == 0) { }
        else if (strncmp(p, "..", d - p) == 0) {
            original_length = strlen(original);
            if (original_length > 1) {
                original_length = original_length - 2;
                while (original_length && original[original_length] != '/') { --original_length; };
                original[original_length + 1] = 0;
            }
        }
        else {
            original_length = strlen(original);
            strncpy(original + original_length, p, d - p);
        }
        p = *d ? d + 1 : d;
    }
}

char *
change_dir(char *relative_path)
{
    char *buffer;
    int cwd_len;

    buffer = (char *)malloc(256);
    strcpy(buffer, _cwd);
    resolve_relative_path(buffer, relative_path);

    if ((_env_error = cwd_verify(buffer)) == 0) {
        free(_cwd);
        _cwd = buffer;
        cwd_len = strlen(_cwd);
        if (_cwd[cwd_len - 1] != '/') {
            _cwd[cwd_len] = '/';
            _cwd[cwd_len + 1] = 0;
        }
    }
    else {
        free(buffer);
    }
    return _cwd;
}

int
system(char *cmd)
{
    int exec_length;
    int result;
    int full_length;
    int *fd;
    char *executable;
    char rep;

    strcpy(_last_cmd, cmd);
    executable = (char*)malloc(256);
    exec_length = strchr(cmd, ' ') - cmd;
    rep = cmd[exec_length];
    cmd[exec_length] = 0;

    // try in $CWD
    strcpy(executable, _cwd);
    resolve_relative_path(executable, cmd);

    fd = fat16_open_file(executable);
    if (fd && !fat16_file_is_dir(fd)) {
        cmd[exec_length] = rep;
        fat16_close_file(fd);
        result = exec(executable);
        free(executable);
        return result;
    }

    // try in $CWD with suffix .mrl
    strcpy(executable, _cwd);
    resolve_relative_path(executable, cmd);
    full_length = strlen(executable);
    strcpy(executable + full_length, ".mrl");

    fd = fat16_open_file(executable);
    if (fd && !fat16_file_is_dir(fd)) {
        cmd[exec_length] = rep;
        fat16_close_file(fd);
        result = exec(executable);
        free(executable);
        return result;
    }

    if (cmd[0] != '.' && cmd[0] != '/') {
        // try in $PATH
        strcpy(executable, _path);
        resolve_relative_path(executable, cmd);

        fd = fat16_open_file(executable);
        if (fd && !fat16_file_is_dir(fd)) {
            cmd[exec_length] = rep;
            fat16_close_file(fd);
            result = exec(executable);
            free(executable);
            return result;
        }

        // try in $CWD with suffix .mrl
        strcpy(executable, _path);
        resolve_relative_path(executable, cmd);
        full_length = strlen(executable);
        strcpy(executable + full_length, ".mrl");

        fd = fat16_open_file(executable);
        if (fd && !fat16_file_is_dir(fd)) {
            cmd[exec_length] = rep;
            fat16_close_file(fd);
            result = exec(executable);
            free(executable);
            return result;
        }
    }

    cmd[exec_length] = rep;
    free(executable);
    return -1024;
}

