#! /bin/bash

version=2.7.1
root=../leosumi.github.io

p=/usr/bin/pandoc
browser=/usr/bin/firefox

installed=$($p --version | head -n 1 | cut -d " " -f 2)
if [ "$version" != "$installed" ]; then
    echo "pandoc version:"
    echo "installed: $installed"
    echo "needed:    $version"
    exit 1
fi

mkdir -p $root
cp style.css $root/style.css
$p -s -o $root/index.html index.md

mkdir -p $root/articles
$p -s -o $root/articles/index.html articles/index.md
$p -s -o $root/articles/how-to-learn-c.html articles/how-to-learn-c.md

mkdir -p $root/chronicles
$p -s -o $root/chronicles/index.html chronicles/index.md
$p -s -o $root/chronicles/hello-world.html chronicles/hello-world.md

mkdir -p $root/lists
$p -s -o $root/lists/index.html lists/index.md
$p -s -o $root/lists/todo-list.html lists/todo-list.md

$browser $root/index.html