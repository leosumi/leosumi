---
title: "How to learn C"
author: Léo Sumi
date: 5 April 2019
title-prefix: Léo Sumi
lang: en
css: ../style.css
...

C is a programming language created by Dennis Ritchie at Bell Labs in the 1970s. The first book written about C: *The C Programming Language* was written by Brian Kernighan and co-authored by Dennis. The first publication date from 1978. The book was considered as the de facto standard for many years. The K&R book had a second edition in 1988 to follow the first standardization of the language: ANSI C (also called C89 or C90). This standard wars followed by some major revisions: C99 in 1999 and C11 in 2011. These standards made some big improvement to C.

The current revision of the standard is ISO/IEC 9899:2018 or [C18][iso]. The current working group on the standard is ISO/IEC JTC1/SC 22/WG 14 or [WG14][open-std]. The drafts of the standards are freely available on the working group website.

The problem with learning C is that there is too many learning materials available for it. Lots of people learned C and lots of people write about it. But these people learned C at different moments and most of the materials are outdated. The fact that people are lazy and do not want to learn something new did not help eater.

The first book about C, *The C Programming Language* date from 1988 for its second and last edition. The book is outdated by the simple fact that two big standards came after it. There is no book to present the actual C language that can be taken as reference. The only reference is the standard and unless you implement a compiler, you do not want to read it and even less learn from it.

The current book that I would suggest to newcomer to the language is *[modern C][modern-c]* by Jens Gustedt. Why? you may ask, because it is written by someone that work on the standardization. It may not be the most beginner friendly book, but it is the best at the moment.

If you have never coded before and want to learn C, begin with an introductory course on the subject. A possibility is the CS50 course from Harvard. The course is available on [YouTube][cs50]. You do not need to watch the full course if you only want to learn C, but if you want to learn computer science, it is a great introduction to the subject. You can then read *modern C*.

Practice is indispensable to learn a programming language. C is no exception. Books generally have an installation section after the introduction. This is generally the most complex and boring part of the book. Thanks to the internet, you do not need to install anything at the beginning, you can find what you need online. At the beginning, you can use an online service to compile and run your code like [onlinegdb][onlinegdb] (thanks google). To do some serious work, you will need to do some setup and installation. The easiest way to have all the tools you need is to use an integrated development environment or IDE. Take a look at [Code::Blocks][codeblocks] for instance.

If you already know another language or an older C standard, *modern C* is the way to go. You can also look at [How to C in 2016][howto-c] and [So You Think You Can const][sytycc], two articles written by Matt Stancliff. The Jens Gustedt's [blog][JG-blog] is also a place to look at. You may find something useful on this [wiki][iso-9899]. Notably, there is a part about tutorials that should be avoided.

If you need a reference manual for the standard library, google is your friend. The best is to look at section 3 of the man pages if you are on Linux, or directly [online][man-pages].

[iso]: https://www.iso.org/standard/74528.html
[open-std]: http://www.open-std.org/JTC1/SC22/WG14/

[cs50]: https://www.youtube.com/user/cs50tv
[modern-c]: http://icube-icps.unistra.fr/img_auth.php/d/db/ModernC.pdf

[onlinegdb]: https://www.onlinegdb.com/
[codeblocks]: http://www.codeblocks.org/

[howto-c]: https://matt.sh/howto-c
[sytycc]: https://matt.sh/sytycc

[JG-blog]: https://gustedt.wordpress.com

[iso-9899]: http://www.iso-9899.info/wiki/Main_Page

[man-pages]: https://www.kernel.org/doc/man-pages/
