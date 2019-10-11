#! /bin/bash

version=2.7.3
root=../leosumi.github.io

p=/usr/bin/pandoc

# Check pandoc version
installed=$($p --version | head -n 1 | cut -d " " -f 2)
if [ "$version" != "$installed" ]; then
    echo "pandoc version:"
    echo "installed: $installed"
    echo "needed:    $version"
    exit 1
fi

# Root directory
mkdir -p $root
cp -r css $root/
cp -r js $root/
cp -r res $root/
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/navigation-bar.html -o $root/index.html index.md

# Articles
mkdir -p $root/articles
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/index-header.html -o $root/articles/index.html articles/index.md

$p -s -H templates/head.html -B templates/theme-settings.html -B templates/article-header.html -o $root/articles/how-to-learn-c.html articles/how-to-learn-c.md
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/article-header.html -o $root/articles/rss-feeds-are-underused.html articles/rss-feeds-are-underused.md
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/article-header.html -o $root/articles/a-small-report-about-patisiran.html articles/a-small-report-about-patisiran.md
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/article-header.html -o $root/articles/the-free-software-road.html articles/the-free-software-road.md
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/article-header.html -o $root/articles/becoming-a-keyboard-master.html articles/becoming-a-keyboard-master.md

# Chronicles
mkdir -p $root/chronicles
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/index-header.html -o $root/chronicles/index.html chronicles/index.md

$p -s -H templates/head.html -B templates/theme-settings.html -B templates/chronicle-header.html -o $root/chronicles/hello-world.html chronicles/hello-world.md

# Lists
mkdir -p $root/lists
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/index-header.html -o $root/lists/index.html lists/index.md

$p -s -H templates/head.html -B templates/theme-settings.html -B templates/list-header.html -o $root/lists/todo-list.html lists/todo-list.md
$p -s -H templates/head.html -B templates/theme-settings.html -B templates/list-header.html -o $root/lists/web-fiction-list.html lists/web-fiction-list.md

# RSS
$p -s --template templates/rss-template.xml -o $root/feed.xml feed.yml
sed -i '/^$/d' $root/feed.xml
xmllint --format $root/feed.xml --output $root/feed.xml

# Local server
if ["$1" = "--serve" ]; then
    python3 -m http.server --directory $root
fi
