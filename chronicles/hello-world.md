---
title: Hello World!
author: Léo Sumi
date: 5 April 2019
title-prefix: Léo Sumi
lang: en
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

## New domain name

15 April 2019

The dark age has come to an end. I finally purchased my domain name. No more *leosumi.github.io*. This website has a proper domain name: *leosumi.com*.

I used *.com* as a top-level domain because it is the first that people will test. I also redirected my *www.* subdomain to *leosumi.com* for the same reason.

I also enforced the *https* protocol over *http*. The secure protocol is pretty much useless for a static website, but I do not want to see the annoying "not secure" warning that recent browsers love to display.

To summarize, you can use the following URL:

* leosumi.com
* www.leosumi.com
* leosumi.github.io

I think that smaller is better and leosumi.com is the way to go.

## Let's put some icons

22 April 2019

I put the corresponding icons for the links at the end of the home page. It is better than a simple bullet list. It is more eye-catching.

I would like to put a link for contact, but I am not sure which is the ideal method for the task. Maybe an email address or a twitter account? I will think about it.

## Let's get a voice

19 July 2019

I created a twitter account. I will use it to announce posts on this site the same way the [RSS feed](../feed.xml) is used. You can follow me at [\@LeoSumiVox](https://twitter.com/LeoSumiVox).

Choosing a handler was a hassle. Obviously @leosumi was not available, as @LeoSumi, @SumiLeo and so on. I do not think using an underscore is a good idea. I do not like using @RealLeoSumi or @TheLeoSumi simply because English is not the only language I speak. Using the Latin word for voice is the best move I think.

## A beautification operation

16 October 2019

Time to make some serious improvement. Let's make everything prettier and more readable.

First, the colors needed to be changed. From now on, you can choose between a light and dark theme. For the dark theme, I reduced the contrast between the text and the background.

The implementation of the theme switcher needed some JavaScript and a cookie to remember the theme you choose. This way, it is possible to display new pages directly with the correct theme.

I changed the font to Helvetica. This sans-serif font gives a more modern look. Vertical spacing was increased for better readability.

I also added a custom [404](/404.html) page and an [about](/about.html) page.

Finally, I tried to clearly separate content to the code needed for the website generation. I discovered that HTML understands root relative path. This was used to simplify linking between pages. No more need for dubious and long relative paths.

But, it is always possible to do better. For instance, I do not have a favicon yet. The website should be tested on multiple browser and screen size. The script that build the webpages could be rewritten. And I could translate some posts in french.
