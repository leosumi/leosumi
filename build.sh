#! /bin/bash

version=2.11.2
R_version=4.0.3
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

# Check R version
R_installed=$(R --version | head -n 1 | cut -d " " -f 3)
if [ "$R_version" != "$R_installed" ]; then
    echo "R version:"
    echo "installed: $R_installed"
    echo "needed:    $R_version"
    exit 1
fi

# This function build and add an R note
R-note()
{
    R -e "rmarkdown::render('notes/r-notes/$1.Rmd', rmarkdown::md_document(variant = 'markdown', preserve_yaml = TRUE))"
    $p --template=templates/default.html5 -V r-note-nav -o $root/notes/r-notes/$1.html notes/r-notes/$1.md
    rm notes/r-notes/$1.md
}

# Root directory
mkdir -p $root
cp -r css $root/
cp -r js $root/
cp -r res $root/

# index
$p --template=templates/default.html5 -V home-nav -o $root/index.html index.md

# 404
$p --template=templates/default.html5 -V index-nav -o $root/404.html 404.md

# About
$p --template=templates/default.html5 -V index-nav -o $root/about.html about.md

# Articles
mkdir -p $root/articles
$p --template=templates/default.html5 -V index-nav -o $root/articles/index.html articles/index.md

$p --template=templates/default.html5 -V article-nav -o $root/articles/how-to-learn-c.html articles/how-to-learn-c.md
$p --template=templates/default.html5 -V article-nav -o $root/articles/rss-feeds-are-underused.html articles/rss-feeds-are-underused.md
$p --template=templates/default.html5 -V article-nav -o $root/articles/a-small-report-about-patisiran.html articles/a-small-report-about-patisiran.md
$p --template=templates/default.html5 -V article-nav -o $root/articles/the-free-software-road.html articles/the-free-software-road.md
$p --template=templates/default.html5 -V article-nav -o $root/articles/becoming-a-keyboard-master.html articles/becoming-a-keyboard-master.md
$p --template=templates/default.html5 -V article-nav -o $root/articles/caps-lock-from-useless-to-indispensable.html articles/caps-lock-from-useless-to-indispensable.md

# Notes
mkdir -p $root/notes
$p --template=templates/default.html5 -V index-nav -o $root/notes/index.html notes/index.md

# R notes
mkdir -p $root/notes/r-notes
$p --template=templates/default.html5 -V note-nav -o $root/notes/r-notes/index.html notes/r-notes/index.md

# Chronicles
mkdir -p $root/chronicles
$p --template=templates/default.html5 -V index-nav -o $root/chronicles/index.html chronicles/index.md

$p --template=templates/default.html5 -V chronicle-nav -o $root/chronicles/hello-world.html chronicles/hello-world.md

# Lists
mkdir -p $root/lists
$p --template=templates/default.html5 -V index-nav -o $root/lists/index.html lists/index.md

$p --template=templates/default.html5 -V list-nav -o $root/lists/todo-list.html lists/todo-list.md
$p --template=templates/default.html5 -V list-nav -o $root/lists/web-fiction-list.html lists/web-fiction-list.md

# RSS
# Pandoc does not recognize XML and YAML without warnings
$p --template templates/rss-template.xml --from=markdown --to=html -o $root/feed.xml feed.yml
sed -i '/^$/d' $root/feed.xml
xmllint --format $root/feed.xml --output $root/feed.xml

# Local server
if [ "$1" = "--serve" ]; then
    python3 -m http.server --directory $root
fi
