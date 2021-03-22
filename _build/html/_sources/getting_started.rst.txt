Getting Started
===============

Installation and requirements
-----------------------------

Scheme For Max is built for Max 8 and above, and is available as a prebuilt external for both Windows
and OS X. (Note that it has not been tested on Big Sur or M1 Apples). To get started, visit the
GitHub site, download the latest release, and uncompress the files in your Max "Packages" directory.
Once you have done this, it should show up in the Max Package Manager, and you should be able to create
an **s4m** object without errors. There is a fairly comprehensive help file as well that should "just work".
If you are not familiar with installing Max externals, there are tutorial videos walking one through 
the installation process and first steps for Windows and OSX on the
`Music With Lisp <https://www.youtube.com/channel/UC6ftX7yuEi5uUFkRVJbJyWA>`_ YouTube channel.

The for documentation of all the Scheme For Max specific functions, and further details on Scheme
For Max, check the `Scheme For Max Documentation <https://iainctduncan.github.io/scheme-for-max-docs/>`_.
The docs do not, however, teach one Scheme, so that's what this book is for!


First patchers
--------------

To run these examples, you should be at a Scheme For Max interpreter. I recommend opening
Max and having both a file editor and the built in s4m.repl bpatcher open, with
the Max console in view. You'll want to be able to send lines of code to the 
interpreter and see the results in the console.  If you haven't already, I recommend watching the tutorial videos
on the "Music With Lisp" youtube channel on installation and first steps. These
will get you up and running, so that you are sending code to your s4m object and 
seeing the results in the Max console. To send code from your editor
to s4m, check out the video on editor integration. If you plan on using
S4M extensively, it's worth getting editor integration going as it 
makes development a lot more pleasant. But you can certainly
get started just using the **s4m.repl** bpatcher too.

In the code sections in this tutorial, I show code as we send it to the intepreter and the
results back from the interpreter. Lines that start with a semi-colon are comments
and don't get run by the interpreter. Lines with no prefixing are expressions
we send to s4m, whether from the built in text editor bpatcher or
from our editor over a network connection. (Or sent to the interpreter some other way, perhaps from
a Max message - see the Scheme For Max documentation if you're not clear
how to do this). Let's quickly make sure we're clear on this:

.. code:: scm

  ; a comment, you can skip typing this in

  ; an expression we send to s4m, it has no prefix
  (+ 1 1)
  ; its return value from the interpreter
  s4m> 2

Some Scheme expressions have side effects. For example, the
**post** function takes any number of arguments and logs them
as strings to the Max console. 
Console output starts with **s4m:** (note the colon)

.. code:: scm

  ; an expression asking the intepreter to log to the console
  (post "testing" 1 2)
  s4m: testing 1 2 

If you have set the s4m attribute **log-null** to true (you can use
the checkbox in the inspector), the console will also log the return
values from any functions that return the **null list**. Normally when
we work in Scheme For Max, we won't want to do this, so the default
setting is for null values to be hidden from the console, but for the purpose
of this tutorial, I recommend turning log-null on so you have a visual indication
of the returned value. The post function is called only for its side effect
(logging), so it returns the null list.  With log-null on, a call to post
will thus show:

.. code:: scm

  ; post prints output, and returns the null list ()
  (post "hello-world")
  s4m: hello-world
  s4m> ()

If you are able to successfully duplicate the above, we're ready to begin!



