#!/bin/sh
':' //; exec "$(command -v nodejs || command -v node)" "$0" "$@"

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
        if (/^\s*size\s+\d+/.test(line)) {
            var bytes = parseInt(line.replace(/^\s*size\s+(\d+)/, '$1'), 10);
            var dword = bytes / 4;
            bytes %= 4;
            while (dword --) {
                console.log('dd 0');
            }
            while (bytes --) {
                console.log('db 0');
            }
        }
        else {
            console.log(line);
        }
    });
});
