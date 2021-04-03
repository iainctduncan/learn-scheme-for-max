Appendix 1 - Other Resources
=============================

There are lots of great resources for learning Scheme and Lisp, and the purpose
of this page is to provide you with a list of some of my favourites, with commentary
on how they are for Scheme For Max.

It's worth reminding readers here that s7 Scheme is a bit of a hybrid - it is
mostly R5RS Scheme, with a smattering of functions from later Scheme standards and Common Lisp,
but with Common Lisp macros and keywords. Given this, none of these books
work perfectly for learning s7, hence the motivation for writing this e-book! 
Thus to really master s7, one is going to want to learn elements of both Scheme and
Common Lisp, and to eventually read the main s7 documentation for the features
that are unique to s7. 

Beginner Resources 
------------------

`Simply Scheme: Introducing Computer Science <https://people.eecs.berkeley.edu/~bh/ss-toc2.html>`_

**Simply Scheme** is an introductory text book for learning Scheme and symbolic computing, written
by Brian Harvey and Matt Wright. This book provides a well-written but thorough introduction to the language, concepts, and idioms of Scheme,
and is my first recommendation for those new to the language. It does require one to load a special
prelude file in order to work with some extensions developed by the authors. Some people dislike
this about the book, but the prelude works without issue in S4M, and I feel the material it allows
the authors to cover is very practical for S4M users. It basically consists of functions
enabling symbols to be used as "words" for symbolic computing. Almost all of which is applicable to working
in Max, given that Max doesn't really have strings, so everything is a symbol. I have tested
the first 10 chapters in S4M and found no issues, and Simply Scheme doesn't get into macros, 
so as far as being S4M compatible, this is probably the best starting place.


`The Scheme Programming Language - 3rd Ed. <https://www.scheme.com/tspl3/>`_

This is the definitive reference manual for standard Scheme. 
Kent Dybvig is the author of Chez Scheme, which follows the R6RS standard, and is now the 
underlying Scheme engine for Racket. The 3rd edition covers the earlier and smaller R5RS
Scheme standard, and is thus closer to s7. These books cover *everything* in the Scheme language
standards and are excellent references, but are rather concise. Be warned however that there are some functions in 
here that are slighly different in s7, and s7 does not use the Scheme macro systems covered
(syntax-case and syntax-rules). 


`Common Lisp: A Gentle Introduction to Symbolic Computing <https://www.cs.cmu.edu/~dst/LispBook>`_

So well known that it's known in hacker circles by its initials, **GISC**, 
this book by David S. Touretzky is arguably the best free resource on 
learning how Lisps work and how to to think in Lisp. It also
has an excellent section on Common Lisp macros, which is the macro system in s7. 
Most of the syntax in the book is *not* applicable to S4M, so it's not a good first book. 
But for learning Lisp metaprogramming, whether
with macros, or just using eval, apply, and friends, this is the best beginner resource.

`How To Design Programs <https://htdp.org/>`_

How To Design Programs is a thorough, beginner oriented textbook introducing computer science
and programming with Scheme. It uses a reduced version of Racket, so it's not a book I recommend
for learning Scheme first (use Learning Scheme!), but if you are new to programming and want
to learn how to think like a programmer and develop good software design habits, this is excellent. 

`The Little Schemer <https://mitpress.mit.edu/books/little-schemer-fourth-edition>`_ and 
`The Seasoned Schemer <https://mitpress.mit.edu/books/seasoned-schemer-second-edition>`_

These two have not, unfortunately, been made available free (yet!). However, they are so helpful
for learning to think in Scheme that I would be remiss in skipping them. These are funny books,
people either love them or hate them. They are written as a pseudo children's puzzle book, and
walk one through building Scheme programs with common patterns. If you do the exercises, you *will*
get totally comfortable thinking recursively and using Scheme's list building idioms. You may be able
to find used or library copies and I highly recommend them for getting comfortable in Scheme to
the point that recursion is as simple to you as looping.


Advanced Resources
------------------

`The s7 documentation <https://ccrma.stanford.edu/software/snd/snd/s7.html>`_

This is the official s7 documentation page. It assumes you know Scheme and Lisp, and really only
covers where s7 is different. If you want to figure out if something is in s7, this is the place.
There is also a mailing list you can join to ask s7 specific questions (link in the docs).

`Structure and Interpretation of Computer Programs <https://mitpress.mit.edu/sites/default/files/sicp/index.html>`_

Known in hacker circles as **SICP**, this is the bible of Scheme programming, and is widely considered to be the single best computer science
book ever written. It was originally written as an MIT textbook though, so it moves fast and has math-heavy
examples. If you want to really understand why people get so excited about
Scheme and Lisp, this is the book. I should say that you don't need to understand all the math examples
to keep reading and gain a lot of value from later chapters. You can watch the lectures on youtube as well now.

`On Lisp <http://www.paulgraham.com/onlisp.html>`_

Paul Graham's **On Lisp** is probably the best book you'll find on writing macros in Common Lisp, 
which is the macro system used in s7. Paul Graham's other book, **ANSI Common Lisp** is also a good
resource but is not freely available.

`Paradigms of Artificial Intelligence Programming <https://github.com/norvig/paip-lisp>`_

This giant tome by Peter Norvig is the third of our hacker bibles known by its initials, **PAIP**. This is 
considered a classic on advanced Lisp programming and classical AI, and also covers Scheme specifically.
Covering rule-based expert systems and AI, the techniques in this book are highly applicable to complex 
music programming. The beginning chapters are even fairly beginner accessible and worth reading for everyone. 

`Coursera's Programming Languages Course <https://www.coursera.org/learn/programming-languages>`_

Professor Dan Grossman has made his programming languages course on functional programming with 
ML, Scheme, and Ruby available free on Coursera. While I have not done this one yet, I've heard
enough great things about it to share it here. 



