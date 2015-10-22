#!/usr/bin/nodejs

process.stdin.setEncoding('utf8');

var content = '';

process.stdin.on('readable', function () {
    var chunk = process.stdin.read();
    if (chunk !== null) {
        content += chunk;
    }
});

process.stdin.on('end', function () {
    var lines = content.split('\n');
    lines.forEach(function (line) {
        if (/^.*string.*\"[^"]+\"/.test(line)) {
            line.replace(
                /^(.*)string.*\"([^"]+)\"/,
                function (match, indent, content) {
                    var len = content.length;
                    for (var i = 0; i < len; ++i) {
                        console.log(
                                indent +
                                'db ' +
                                content.charCodeAt(i) +
                                ' # \'' +
                                content[i] +
                                '\'');
                    }
                    console.log(indent + 'db 0');
                }
            );
        }
        else {
            console.log(line);
        }
    });
});