import UIKit

/*
 Wrong way to write string breaks.
     let emailSignature = "Aliyah Smith
     VP, Sales
     (555) - 555 - 5555"
 
     unterminated string literal
 */

let emailSignature = "Kendrick Smith\nVP, Sales\n(555) - 555 - 5555"
print(emailSignature)

/*
 Escape Characters in Swift:
 The following are the most common escape characters:

 Character    Usage
    \n        Newline / line feed
    \t        Horizontal tab
    \"        Double quotation mark, using " alone signifies the end of a string
    \'        Single quotation mark
    \         Backslash, using "\" alone escapes the next character
 
 */


/*
 Your Turn
 Write code that produces the following output.
 Try doing it with only one print statement!
 
     "Hello
     World"
 */

print("\"Hello\nWorld\"")
