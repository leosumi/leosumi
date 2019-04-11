---
title: Hello World!
author: Léo Sumi
date: 5 April 2019
title-prefix: Léo Sumi
lang: en
include-before: <a href="../index.html">Home</a> / <a href="index.html">Chronicles</a>
css: ../style.css
...

The aim of this chronicle is to record the history of this site. How long will this post be? I do not know yet. Time will tell.

## Going static

5 April 2019

How to create a personal website or blog? Going to [WordPress](https://wordpress.com/) and create an account would be the first answer. It may be the most straight forward way to do it, but not the best approach for a personal website in my opinion. I find lots of problems with this method. The biggest one: you must take your credit card out if you do not want some random advertising pop-up to appear on your beautiful, new, personal place on the internet. Furthermore, the infrastructure is overkill to only display some text.

I want something easy to read without advertisement and crap for you and easy to implement for me.

I could have written the entire website in raw HTML. The problem is that HTML is not the prettiest language to look at and I do not want to see tags everywhere in my text when I write a post. I choose to write the posts in markdown and convert them with [pandoc](https://pandoc.org/). For the style of the website, because I am lazy and do not want to think about it, I took the CSS from [Chris Were's website](https://chriswere.neocities.org/) (by the way, he makes some good Linux content). To make the text readable, I followed some [typography advise](http://webtypography.net/) that I found thanks to [Sylvain Durand's journal](https://www.sylvaindurand.org/).

Using a static site generator like [jekyll](https://jekyllrb.com/) or [hugo](https://gohugo.io/) was also a possibility, but I find more interesting to do all the process by myself.

At the end, I obtained a simple static website with HTML and CSS files only. It is small, crazy fast to load, and without all the useless trackers trying to learn about you that most websites love to use.

From now on, I will post the content that I want to share. Without specific aims.

## Feed me

11 April 2019

I will post whenever I feel like it. To be the first to know when a new post is available, I implemented an RSS feed. This is maybe the most underused technology. The feed is available [here](../feed.xml). I will update it if I write a new article, update a chronicle, or make a big change.

If you do not know what a feed is, you can do some research on RSS technology. I will write an article about it when I have the time (the [TODO list](../lists/todo-list.html) is growing). A feed is used to be informed of new publications on a website. It is mostly used on news sites and blogs.

RSS feeds are written in XML. As it is not the most readable language, I wrote a pandoc template to convert a YAML file to an RSS feed. The template is available in this [repository](https://github.com/leosumi/pandoc-rss-template) on my github account.

By the way, Richard Stallman came at my university to give a conference. I think I should write an article about free software.
