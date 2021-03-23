Part 2 - Learning Lisp 
======================



Environments and Closures
--------------------------
    
The temporary scope that is created by a let (or a function) is called an *environment*.
It's a frame in memory with a series of bindings. Normally, it's destroyed
as soon as the let returns: there are no more references to the bindings
in the let, so the garbage-collector cleans up and deletes the environment. 
But if we return a function that has references to the bindings in the let, 
the environment will live on. This is called a *closure* in many languages,
and is the key to much of the power of Scheme and Lisp. You might hear this
refered to as **"let over lambda"**. 

.. code:: scm

  ; create a function inside a let, returning the function
  (define add-42
    (let ((to-add 42))
      (lambda (x) 
        (+ to-add x))))

  (add-42 3)
  s4m> 45

In the above example, the lambda function has a reference to the temporary
variable "to-add", and uses it in the body of the function. The function 
is returned from the let (it's the last expression in the let) and bound
to the name "add-42" in the define. Because we are holding on to the 
reference to the function, this means the environment lives
on after the let is finished.  The "to-add" variable
in the lambda is the let's variable, it's the variable that existed in scope
*when the lambda executed*. This is called **lexical scope**. 

Here's an example demonstrating that the scope of **to-add** in the let
is separate from global scope:

.. code:: scm

  ; make a global var, to-add
  (define to-add 1)

  ; create a function inside a let, with its own to-add variable 
  (define add-42
    (let ((to-add 42))
      (lambda (x) 
        (+ to-add x))))

  ; calling add 42 here at global scope level still uses the inner version
  (add-42 3)
  s4m> 45
  (set! to-add 2)
  
  (add-42 3)
  s4m> 45



Nesting functions and lambdas is a way to make *objects as functions*. 
These are functions that have some private state. The equivalence of lets 
and lambdas means we can intermix them freely and we have a lot of flexibility
in how we implement function objects. Let's make a function
that counts how many times it has been called:

.. code:: scm

  ; make a counter variable in a let
  (define counter-fun
    ; count is a variable private to this function
    (let ((count 0))
      ; the lambda gets returned from the let and bound to counter-fun
      (lambda () 
        ; mutate our private variable and post
        (set! count (+ 1 count))
        (post "Call" count))))
  
  (counter-fun)
  s4m: Call 1
  (counter-fun)
  s4m: Call 2

The **count** variable is private to counter-fun. We
have no other way of accessing it. 

We can also accomplish something similar with nested functions.
We could make this more sophisticated by allowing us
to specify an increment value for each count. We'll have 
a builder function make our counter: 

.. code:: scm

  ; a function that builds a counter function
  (define (build-counter increment)
    (let ((count 0))
      (lambda () 
        (set! count (+ 1 increment))
        (post "Count is now:" count))))
  
  (define counter (build-counter 2))
  
  (counter)
  s4m: Count is now: 2
  (counter)
  s4m: Count is now: 4
 
 
Finally, here is an example of the same pattern where
the function returned by the lambda, also itself returns a 
value based on the private variable:

.. code:: scm

  ; a function that builds another function and tracks calls
  (define (build-adder to-add)
    ; a local variable storing number of times we are called
    (let ((times-called 0))
      ; a lambda to return the function-object
      (lambda (x) 
        ; update the local variable and post to the console
        (set! times-called (+ 1 times-called))
        (post "I have done" times-called "additions!")
        ; return the results of our addition
        (+ x to-add))))

  (define add-3 (build-adder 3))

  (add-3 10)
  s4m: "I have done 1 additions!"
  s4m> 13

  (add-3 12)
  s4m: "I have done 2 additions!"
  s4m> 15
 

Note in the above that we did not need to explicitly 
use **to-add** in the bindings of our let. Because lets and
lambdas are equivalent in scope creation, the to-add variable
and the times-called variable will both be persisted in the 
environment that the lambda function brings back with itself. 
In a future section, we will look at how these patterns can be
used to make sophisticated and flexible object oriented systems.



