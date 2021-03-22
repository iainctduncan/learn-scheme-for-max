Introduction
================================================================================

The purpose of this e-book is to help new users of Scheme For Max (S4M),
get up and running as quickly as possible, making useful things in Max as they go.
Despite the reputation of Lisp as an esoteric and unusual language, it's
easy to learn enough to be productive in Max, and once you do, I think you'll
find uses for S4M in lots of your patchers.

Learning Scheme presents some challenges, because Scheme is more of a family of languages than one specific language.
The advantage of this is that we can find Schemes optimized for particular problem
domains, and s7 is one these - it's been designed specifically for computer music 
and interactive computer music tools. The challenge is that, while 
there are a *lot* of great, free, on-line resources, none of them 
target s7 specifically. And s7 is a bit of a hybrid, borrowing many features
from Common Lisp as well as Scheme (similar to Clojure), so figuring out the
differences can be frustrating for a new programmer.  The official s7 documentation has a wealth of examples,
but it's aimed at the experienced Scheme and Lisp hacker. 
This book is meant to ease your introduction by providing a short and simple crash course
using s7 and s74, my thin convenience layer on top of s7.  Following this
book (or in parallel) you'll be better equipped to take advantage of the many free 
resources for learning Scheme in depth. 

Scheme is minimal, with almost no syntax, and a very small number of special forms. 
However, to write idiomatic Scheme and take advantage of the language, we need to 
understand how the language and intepreter work in a way that other languages don't require until an advanced level.
As a result, many Scheme resources are pretty heavy on language concepts up front.
The approach I'm going to take is a bit different. In Part 1, I'll teach you the fundamental
building blocks of Scheme, but will skim pretty lightly over the theory. 
I want you to get making things in Max right away.
We will cover making variables and functions, basic and compound types, branching and looping, 
managing definitions and scope, and simple cases of code-as-data/data-as-code. And we'll use Scheme for Max examples 
that you can play with right away in Max.

Once you've gotten up and running, and experienced the power of the language first hand,
you can go over the basics again in a more theory-heavy book to really understand
the Lisp paradigm. I recommend the book "Simply Scheme", 
which is available free online. It's a great introduction to Scheme and computer science, and
has examples that will almost all run on Scheme For Max, or in the Dr Racket 
IDE. 

.. TODO
  There is a Scheme For Max cookbook recipe on how to use Simply Scheme with S4M,
  and a page on the S4M documentation about other Scheme learning resources. 
  There is also a page here and in the main documentation listing other great resources,
  many of which are free online.

Finally, I am publishing this free, as it evolves. So initial drafts will be a bit rough
and move pretty quickly, but will be improved and expanded as we go. I want to get material
into the hands of users as soon as I can, and will improve it later based on feedback.
Please feel free to submit questions or requests for clarification in the GitHub issue tracker
for the Learn Scheme For Max repository.

Enjoy and happy Scheming!

Iain Duncan

University of Victoria

Victoria, BC

January 2021
