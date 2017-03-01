+++
title = "Digital Reboot"
description = "Moving from the Ghost blogging platform to a self-made static website."
author = "Philipp Jovanovic"
date = "2015-09-24T9:08:00+01:00"
updated = "2015-09-26T23:52:00+01:00"
[menu.main]
    parent = "blogId"
+++


If you have ever visited my personal site before, you might be already aware
that quite a bit has changed on the visual side recently. Not only its
appearance and domain[^1] are new, though, also the technology under the hood
has been swapped out completely.

After approximately an one year long intermezzo with the open source blogging
platform [Ghost](https://ghost.org/), I am back at using a self-made site. Don't
get me wrong, Ghost is a nice product and I think that its team is doing a great
job. Using Ghost is really simple and straightforward. In particular, for
someone who just cares about writing blog posts and who is not interested in
tinkering with HTML/CSS/whatever, it's a great place to start. For my needs,
however, Ghost was always a bit too "inflexible" and had functionality that I
never used. I do not need support for multiple users. I did not like the fact
that I had to be online and login through my browser to modify or write content,
especially since I do most of my day-to-day work on the terminal via Vim.
Writing offline and then copy-and-pasting to Ghost did not make any sense to me
either. I just wanted to use the tools that I am already accustomed to.  Beyond
that, last time I checked, using static pages in Ghost was a bit inflexible
(yeah I know, it's first and foremost a blogging platform) but I wanted to have
a way to display my [contact information](/meta), [research stuff](/research),
etc. The following perfectly expresses my thoughts:

> The typical CMS driven website works by building each page on-demand, fetching
> content from a database and running it through a template engine. This means
> each page is assembled from templates and content on each request to the server.
> For most sites this is completely unnecessary overhead and only adds complexity,
> performance problems and security issues. After all, by far the most websites
> only change when the content authors or their design team makes changes.

The above remark is from [StaticGen](https://www.staticgen.com), a page
collecting information on many of the most popular static site generators out
there. Moreover, going the extra-mile by coding and setting up the page myself
would be a great opportunity to learn about all kinds of technologies. So here I
am back[^2] at using my own custom static site generator written in Python based
on [Flask](http://flask.pocoo.org/),
[Frozen-Flask](https://pythonhosted.org/Frozen-Flask/), and the
[Jinja2](http://jinja.pocoo.org/) template engine. Writing blog posts is done in
Markdown (via Vim &#9786;). LaTeX support is enabled through
[MathJax](https://www.mathjax.org/). For updating the site, I first generate the
static pages locally and then use a simple shell script that logs into my server
via ssh and deploys the content through rsync. Needless to say, everything is
under version control via Git and additionally covered by my backups. That's it.


The source code of my site generator is currently not available online since I
do not consider it ready for publication. The code is tailored too strongly
towards my needs. If someone has a real interest in it, though, feel free to ping me. Maybe I'll
put a cleaned-up version on GitHub at some point. In the meantime, you can check
out some of the tutorials that I used for realising this site, such as [this](http://royprins.com/flatfreeze-intro-and-quick-start),
[this](https://nicolas.perriault.net/code/2012/dead-easy-yet-powerful-static-website-generator-with-flask/),
or
[that](http://www.jamesharding.ca/posts/simple-static-markdown-blog-in-flask/).


What to expect from all of this? Well, I don't know exactly myself yet. You'll
probably see stuff on crypto, IT-sec, research, coding, or anything else that is
on my mind at the time. Maybe I'll write about cooking recipes.

In any case, stay tuned![^3]


**Update (2015-09-26, 23:52):** Added a quote from [StaticGen](https://www.staticgen.com).


[^1]: The old domain [http://cryptomaths.com](http://cryptomaths.com) redirects here until it expires.
[^2]: In fact, I've also used a similar but not that elaborated setup before my Ghost phase.
[^3]: Maybe through some [RSS](/atom.xml).
