# Léo Sumi's random thoughts

This repository contains the different files needed to generate my website. I write using the markdown syntax and convert the different markdown files to HTML using [pandoc](http://pandoc.org/).

The website is served from the [leosumi.github.io](https://github.com/leosumi/leosumi.github.io) repository.

The website can be found at https://leosumi.com

## Website layout

    ├─ articles/     articles on a particular subject
    ├─ chronicles/   posts following a timeline
    ├─ css/          CSS for a readable website
    ├─ js/           JavaScript code
    ├─ lists/        lists of interesting stuff
    ├─ notes/        notes on different subjects
    ├─ res/          resources directory
    ├─ templates/    templates for pandoc
    ├─ 404.md        404 page
    ├─ about.md      About page
    ├─ build.sh      build script
    ├─ feed.yml      RSS feed
    └─ index.md      Home page

## RSS feed

To generate the XML file for the RSS fedd, I wrote a small template for pandoc. It is used to convert YAML files to an RSS feed. The template is available in the [pandoc-rss-template](https://github.com/leosumi/pandoc-rss-template) repository. Feel free to use it.
