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
  console.log(content.replace('__CR__', '\n'));
});

