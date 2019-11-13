import UIKit


//In some cases, you may want to take the value returned by a function and immediately use it to call another (or the same function). This is easily accomplished by chaining function calls together, and while it may look complicated at first, it is quite intuitive.

func addExcitementToString(string: String) -> String {
    return string + "!"
}

// chained together twice
let excitedString = addExcitementToString(string: addExcitementToString(string: "yay"))

// chained together 4 times
let reallyExcitedString = addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: "wahoo"))))

//It is best to work from the inside-out. Looking at the first example, the inner function call addExcitementToString(string: "yay") returns “yay!”. Then the outer function call uses the result of “yay!” as its input value. Finally, “yay!!” is returned which is what you see in the right pane.

//Practice
//As a quick practice, try writing a function that generates a simple Mad Lib. If you are unfamiliar with Mad Libs, it is a phrase template game that prompts someone for a list of words and then substitutes those words into a fun story or phrase. For this exercise, the Mad Lib is the following:

//To complete this exercise, take the following steps:
//
//    Define a function called madLibGenerator that has three String parameters and returns a String.
//    Write the body of madLibGenerator() so that it returns the template in the image above with the parameters substituted in the designated positions. (Hint: Try combining Strings together using the + operator. Ex. “mad” + “lib”)
//    Test the madLibGenerator function by calling it multiple times with different arguments.
//
//Once you’ve finished testing the madLibGenerator function, do the following:
//
//    Create a new Mad Lib template
//    Rewrite the madLibGenerator() function so that it works with your new template. It will take String parameters and return a String. You will need enough String parameters so that you can substitute one for each placeholder in your new template.
//    Then, share your function with others on the forums.


//"___________! he said ________ as he jumped into his convertible
// curseWord             adverb
//
// ______ and drove off with his _________ wife."
//  noun                         adjective

let curseWord = "fatherMucker"
let adverb = "loudly"
let noun = "Kenderson"
let adjective = "tall"

func madLibGenerator(curseWord: String, adverb: String, noun: String, adjective: String) -> String {
    return curseWord + "! " + noun + " yelled " + adverb + " at the " + adjective + " tree."
}

madLibGenerator(curseWord: curseWord, adverb: adverb, noun: noun, adjective: adjective)

