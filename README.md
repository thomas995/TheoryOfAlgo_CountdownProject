# TheoryOfAlgo_CountdownProject

### _Developed By: Thomas McNamara_
### _Due Date: 23rd April 2017_

### The aim of this project is to recreate the popular math game from the show Countdown using Scheme with the Dr.Racket IDE. ###

### The computer randomly selects six numbers that will either be a collection of small numbers( _from 1 to 10_) and larger ones(_25, 50, 75 and 100_). By combining this with randomly generated operators, it will try to output a solution to reach the target with the given variables. ###

## Running The Project
To run the project, simply take the code from the _"Countdown Game in Scheme.rkt"_ from this repository and either copy or execute the code in an IDE of your choice. 

This code was developed using DrRacket which allows for quick deployment and execution of Racket code without having to install extra tools outside of the IDE.

## What Does It Do?
When the code is executed, four random numbers are generated from a list of _small numbers_ and two numbers from a list of _large numbers_. These are then added to a defined method called _Usable_Nums_ to make them easier to call later. 

Then a method is created called _TargetRange_ which generates a random number between _101 to 999_ which will then be displayed to the console. This will be the target that the program will have to reach at a later point.

In the next section, the program will generate an answer randomly(_Not the same as TargetRange_). This is done by taking the six randomly generated numbers from earlier and applying the randomly generated operators(_called RandomOps1-6_) to each number as it goes through to give a totaled answer. I have also create a line of code to output the order in which the operators were used in the _Attempted Answer_. This is due to not being able to output the workings in one single function.

Once that is complete, it then will ask if the answer created(_attemptAnswer_) is the same and the _TargetRange_ created earlier. Using a _LET_ statement, I compared the number created with the target number. If the number is higher than the Target, it will display _"Attempt Is Too High"_ and if it's too low, it will display _"Attempt Is Too High"_. If the answer is correct, then the message _"Attempt Is Correct"_ will display. Also, as a warning, an output _"Attempt is a minus number. Please try again."_ is also displayed if the attempt is in the negatives.

Following on from there, I have created two methods that make use of the _Cartesian-Product_. This outputs all the possible combinations/order of all the elements inside of the brackets. This is used to show all combination of _operators_ and _six randomly-selected numbers_. 

### *This may need to be comments out after initially checking out how it works due to how much memory it consumes and how much time it takes to compute.* ###

The final functionality implemented into the project is some user input. This is at the very bottom of the console once everything else has been executed. This will ask the user to input six numbers(_four small and two large_). It will also contain the same target number as what was previously used generated in the program. 

By mixing in _randomOps(one through six)_ with _(read)_ functionality, I was able to get the user to enter in any number they wanted into the console. I tried applying this same logic to the operators but as of the time of writing this, I was unable to get that functionality working. Once the numbers have been entered into the textbox, an answer is generated. You will then have to match that number to the target to see if it is correct or not. If it is not, run the program another time and try again. 

### _Good Luck_.

# REFERENCES
Moodle -> https://learnonline.gmit.ie/course/view.php?id=3758

Display and Newline -> https://docs.racket-lang.org/reference/Writing.html

Let Statement Adaption -> https://docs.racket-lang.org/reference/let.html

Cond Statement Adaption -> https://docs.racket-lang.org/reference/if.html

Loops for user input Adaption -> http://beautifulracket.com/explainer/loops.html

Racket Website -> https://docs.racket-lang.org

Random Generation -> http://stackoverflow.com/questions/14674165/scheme-generate-random
