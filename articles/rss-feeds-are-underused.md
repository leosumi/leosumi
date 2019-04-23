---
title: "RSS feeds are underused"
author: Léo Sumi
date: 23 April 2019
title-prefix: Léo Sumi
lang: en
include-before: <a href="../index.html">Home</a> / <a href="index.html">Articles</a>
css: ../style.css
...

RSS feed is the most underused web technology. Most people have never heard about it. If you are part of these people, this article is for you.

RSS stands for Really Simple Syndication. It is a web syndication technology. RSS is mostly used to be informed when new content is posted on a website. Most news site and blogs provide an RSS feed that can be used. You can also create feeds for YouTube channels or twitter accounts.

The benefice is huge. No need to look if new content was posted on a blog, or if a new video was uploaded by your favorite content creator. Everything is centralized and available from a single application. You will know when new content is available. No more time spent looking for new upload.

To use RSS feeds, you need two things: the RSS feed for the content you want to follow and an application to read the feed.

## RSS readers

Lots of different application are available. The following applications are free and open source. They are also available for Windows, Mac and Linux.

* [QuiteRSS](https://quiterss.org/)
* [Mozilla Thunderbird](https://www.thunderbird.net/en-US/)

If you want a simple application, use QuiteRSS. It is straightforward. If you already use Thunderbird as an email reader, you can use it to read RSS feeds too. In my case, I use [newsboat](https://newsboat.org). It is a small application for the terminal, but it is only available for Linux.

Online services also exist, but you will need to create an account and log in to have access to it. I am not a fan of them. If you want a list to check out, look for:

* [Feedly](https://feedly.com/i/welcome)
* [The Old Reader](https://theoldreader.com/)
* [Inoreader](https://www.inoreader.com/)
* [Feeder](https://feeder.co/)
* [Feedreader](https://feedreader.com/)

When you have chosen an application and installed it, it is time to look for feeds.

## RSS feeds

To use an RSS feed, you will need the URL of the corresponding feed.

Look for the feed icon: []{.feed-icon}. Try to find the words RSS or Atom feed. Atom feed is equivalent to RSS feed. It is very similar to RSS feed and has the same purpose.

For YouTube channels and playlists, you can use the following URLs:

* https://www.youtube.com/feeds/videos.xml?channel_id=**CHANNEL**
* https://www.youtube.com/feeds/videos.xml?user=**USER**
* https://www.youtube.com/feeds/videos.xml?playlist_id=**PLAYLIST**

You will need to replace **CHANNEL**, **USER** and **PLAYLIST** with the corresponding identifier. The identifiers are written inside the URL of the YouTube channel or playlist home pages. Here are some examples.

The channel ID for the [3Blue1Brown](https://www.youtube.com/channel/UCYO_jab_esuFRV4b17AJtAw) YouTube channel:

* URL: https://www.youtube.com/channel/**UCYO_jab_esuFRV4b17AJtAw**
* RSS: https://www.youtube.com/feeds/videos.xml?channel_id=**UCYO_jab_esuFRV4b17AJtAw**

The user for the [Vox](https://www.youtube.com/user/voxdotcom) YouTube channel:

* URL: https://www.youtube.com/user/**voxdotcom**
* RSS: https://www.youtube.com/feeds/videos.xml?user=**voxdotcom**

The playlist ID for the [Imaginary Numbers are Real](https://www.youtube.com/playlist?list=PLiaHhY2iBX9g6KIvZ_703G3KJXapKkNaF) from the [Welch Labs](https://www.youtube.com/channel/UConVfxXodg78Tzh5nNu85Ew) YouTube channel:

* URL: https://www.youtube.com/playlist?list=**PLiaHhY2iBX9g6KIvZ_703G3KJXapKkNaF**
* RSS: https://www.youtube.com/feeds/videos.xml?playlist_id=**PLiaHhY2iBX9g6KIvZ_703G3KJXapKkNaF**

To read Twitter, Instagram, Google Plus and Facebook on RSS feeds, look at [Queryfeed](https://queryfeed.net). You can also look at [TwitRSS.me](https://www.twitrss.me) to get twitter user feed as RSS (not working when writing this post). Social medias like twitter do not like the usage of RSS feed to read their contents. They want you to use their website or application. They make the usage of RSS feeds more difficult.

At the end, I only use RSS feeds for blogs or websites that have a feed available and follow the upload of new videos on YouTube. I save lots of time thanks to this technology.

This website has an RSS feed. It is available [here](../feed.xml). You can check at this [repository](https://github.com/leosumi/pandoc-rss-template) if you want to know how it is implemented.
