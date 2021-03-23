Appendix 1 - Other Resources
=============================

There are lots of great resources for learning Scheme and Lisp, and the purpose
of this page is to provide you with a list of some of my favourites, with commentary
on how they are for Scheme For Max.

It's worth reminding readers here that s7 Scheme is a bit of a hybrid - it is
mostly R5RS Scheme, with a smattering of functions from later Scheme standards,
but with Common Lisp macros and keywords. Given this, none of these books
work perfectly for learning s7, hence the motivation for writing this e-book! 
Thus to really master s7, one is going to want to learn elements of both Scheme and
Common Lisp, and to eventually read the main s7 documentation for the features
that are unique to s7. In this page, I'll highlight the areas that various resources
are applicable or not.

Beginners
---------

`Simply Scheme: Introducing Computer Science<https://people.eecs.berkeley.edu/~bh/ss-toc2.html>`_

Simply Scheme is an introductory text book for learning Scheme and symbolic computing, written
by Brian Harvey and Matt Wright. This book provides a well-written but thorough introduction to the language, concepts, and idioms of Scheme,
and is my first recommendation for those new to the language. It does require one to load a special
prelude file in order to work with some extensions developed by the author. Some people dislike
this about the book, but the prelude works without issue in S4M, and I feel the material it allows
the authors to cover is very practical for S4M users. It basically consists of functions
enabling symbols to be used as "words" for symbolic computing. Almost all of which is applicable to working
in Max, given that Max doesn't really have strings, so everything is a symbol. I have tested
the first 10 chapters in S4M and found no issues, and Simply Scheme doesn't get into macros, 
so as far as being S4M compatible, this is probably the best starting place.

 




 
