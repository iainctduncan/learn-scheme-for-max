Learn Scheme For Max and S74 Scheme (a work in progress)
========================================================

Introduction
------------

The purpose of this e-book is to help people who are interested in Scheme For Max learn
Scheme Lisp. 
Despite the reputation of Lisp as an esoteric and unusual language, it's
easy to learn enough to be productive in Scheme For Max. However, learning Scheme
presents some challenges. The big one is
that Scheme is not really *one* language - it's a family of related Lisp dialects 
with many features that differ by implementation.
This differs from languages like C, Python, or Ruby, and
has both pros and cons. 

The pro is that one can find an implementation optimized
for any particular use case. You can find flavours for fast compilation (Gambit),
for embedding (Guile), for large code bases (Chez), for linguistic research (Racket), and so on.
S7 Scheme, developed by Bill at the CCRMA computer music center at Stanford, is designed
with our problem domain in mind, and thus the linguistic trade-off decisions have all
favoured what makes sense for someone working on interactive computer music. S74
is a thin layer on top of S7 to make S7 more beginner friendly - it just adds convenience
functions ported from other implementations that I believe a typical Scheme For Max user 
will want out-of-the-box.

The big downside of this situation is documentation. The good news is that Scheme's
prevalence in academia means that there are a *lot* of great, free, on-line resources.
However, none of those target S7 very well, as S7 uses a mix of features from various minimal Schemes
and from Common Lisp. This means one must figure out which bits do and don't apply for Scheme For Max,
and look across a variety of sources.
The S7 documentation has a wealth of examples, but is aimed solidly at the (very!) experienced 
Scheme and Lisp hacker. The purpose of this book is to get the new Lisper up to speed
as easily as possible with Scheme as it is implemented in Scheme For Max. Following this
book you'll be able to take advantage of the many wonderful resources out there, ranging from
beginner friendly books like "The Little Schemer" and "How to Design Programs" to some
of the most advanced and influential books in computer science, such as 
"Structure and Interpretation of Computer Programs" (SICP). 

Learning Scheme is a bit different from learning other lanugages. Scheme is minimal - really minimal.
There is almost no syntax, and a very small number of special forms. (Part of what makes it 
great for working with Max!) However, learning to think in Scheme is harder than most
other languages. You may have heard of the term "homoiconicity", or heard the expression 
that in Lisp "Code is data, and data is code". To write idiomatic Scheme and really take
advantage of what the language makes possible, we need to understand how the language
and intepreter work in a way that other languages don't require until an advanced level.
We need to understand how to move easily between code-as-data and data-as-code. This
presents a challenge in teaching the language. There are many good books out there
that do this admirably, such as "Common Lisp: A Gentle Introduction to Symbolic Computation" and
the previously mentioned "How to Design Computer Programs".  But they aren't aimed at a dialect 
similar to S7, and they are deep on theory and fundamentals.

The approach I'm going to take is a bit different. In Part 1, I'll teach you the fundamental
building blocks of Scheme with the aim of getting you going in Scheme for Max as
fast as possible. I want you to make things in Max and experience the benefits of Scheme
For Max right away, even if you are writing "bad Scheme". We really don't need to know
much Scheme, or be writing elegant functional code, to get stuff done in Max. We will
cover making variables and functions, looping constructs, managing definitions and scope,
and simple cases of code-as-data/data-as-code. And we'll use Scheme for Max examples 
that you can play with right away in Max.

Then in Part II, we will double back to the beginning and rexamine the same content
in much greater depth, looking under the hood and what's going on in the interpreter
and why this matters for building elegant Scheme programs. We'll look at more
advanced, idiomatic Scheme approaches to common programming problems, and we'll
discuss S7's unique features and how to use them. Part II will
equip you to use the broader Scheme resources available, and hopefully, give you the
famous "Lisp enlightenment". 

This approach is in contrast to most of the Scheme literature I've found, and is
inspired by my experience teaching music. We don't expect students to have the interest
necessary to understand tuning systems and why a dominant chord sounds the way it does
before we get them playing songs. After they have experienced the joy of music and
have a curiousity about the fundamentals, then we go back to the beginning and explain
*why* a C scale and an Ab scale have the notes they do. I believe this approach
will get you enjoying Scheme, and making *music*, as soon as possible, while exposing you
to what I truly believe is the most elegant and expressive family of programming
languages. 

Finally, I am publishing this free as it develops. So initial drafts will be a bit rough
and move pretty quickly, but will be fleshed out over time. I want to get material
into the hands of users as soon as I can, and will improve it later based on feedback.
Please feel free to submit questions or requests for clarification in the Github issues.

Enjoy and happy Scheming!

Iain Duncan

University of Victoria

Victoria, BC

January 2021
