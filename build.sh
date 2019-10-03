#! /bin/bash

version=2.7.3
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
cp -r res $root/
$p -s -o $root/index.html index.md

mkdir -p $root/articles
$p -s -B templates/index-header.html -o $root/articles/index.html articles/index.md

$p -s -B templates/article-header.html -o $root/articles/how-to-learn-c.html articles/how-to-learn-c.md
$p -s -B templates/article-header.html -o $root/articles/rss-feeds-are-underused.html articles/rss-feeds-are-underused.md
$p -s -B templates/article-header.html -o $root/articles/a-small-report-about-patisiran.html articles/a-small-report-about-patisiran.md
$p -s -B templates/article-header.html -o $root/articles/the-free-software-road.html articles/the-free-software-road.md
$p -s -B templates/article-header.html -o $root/articles/becoming-a-keyboard-master.html articles/becoming-a-keyboard-master.md

mkdir -p $root/chronicles
$p -s -B templates/index-header.html -o $root/chronicles/index.html chronicles/index.md

$p -s -B templates/chronicle-header.html -o $root/chronicles/hello-world.html chronicles/hello-world.md

mkdir -p $root/lists
$p -s -B templates/index-header.html -o $root/lists/index.html lists/index.md

$p -s -B templates/list-header.html -o $root/lists/todo-list.html lists/todo-list.md
$p -s -B templates/list-header.html -o $root/lists/web-fiction-list.html lists/web-fiction-list.md

pandoc -s -o $root/feed.xml --template templates/rss-template.xml feed.yml
sed -i '/^$/d' $root/feed.xml
xmllint --format $root/feed.xml --output $root/feed.xml

$browser $root/index.html
