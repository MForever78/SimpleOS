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
        if (/^\s*string\s*\"[^"]+\"/.test(line)) {
            line.replace(
                /^(\s*)string\s*\"([^"]+)\"/,
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
        else if (/^\s*char\s*\'[^']\'/.test(line)) {
            line.replace(
                /^(\s*)char\s*\'([^'])\'/,
                function (match, indent, content) {
                    // for this is a single variable, so use dd
                    console.log(indent + 'dd ' + content.charCodeAt(0));
                }
            );
        }
        else {
            console.log(line);
        }
    });
});
