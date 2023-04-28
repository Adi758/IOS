import Foundation

/* Mobile Computing - iOS Spring 2023 Assignment 01 */

/* When you open this file in Xcode, it is normal that you see errors in the source code. */

//**************** QUESTION 1 ****************

// 1.a) Declare a variable called name, age, & gpa of type String, Int, Double respectively, using type annotation.

      var name: String
      var age: Int
      var gpa: Double

 
// 1.b) Declare a constant called maxHeight of type Double, with a value of 180.93, using type annotation.

    let maxHeight: Double = 180.93
 
// 1.c) Print "Your max height is xxx.xx cm.", replacing the xxx.xx with the value of maxHeight. Use String interpolation.

print("Your max height is \(maxHeight) cm.")

// print("-----------------------------------")
 
// 1.d) Assign 8,400,428,917 to a variable largeInt and print it. Use the Swift's ability to write large numbers so that they are easy to be read. Refer to Tuples worksheet (problem 4).


// print("-----------------------------------")

var largeInt: Int = 8_400_428_917
print(largeInt)
 
// 1.e) Write Swift code to print the below text in one single print statement.
            /*
                Hello, All
                Welcome to Mobile Computing - iOS Spring23..!
            */

// print("-----------------------------------")
print("Hello, All\nWelcome to Mobile Computing - iOS Spring23..!")
 
//**************** END OF QUESTION 1 ****************
 
//**************** QUESTION 2 ****************

// 2.a) Predict what will happen when you try and execute below three statements? Make sure to uncomment the third line.
 
var x = 53.5
var y = 40
//y = x
// The first two statements will run successfully and x will be assigned the value of 53.5 and y will be assigned the value of 40.

//However, the third statement will result in a compile-time error because you cannot assign a value of type Double to a variable of type Int. The types must match in order to perform the assignment.

// 2.b) Fix the error in the question 2.a
//You can cast the value of x to Int before assigning it to y in order to resolve the type mismatch error, like this:
//var x = 53.5
//var y = 40
y = Int(x)

//Now the code will run without any errors and y will be assigned the rounded-down integer value of 53.


//**************** END OF QUESTION 2 ****************
 
//**************** QUESTION 3 ****************

// 3 Consider a point (x1,y1), find whether the point is inside or outside the right-angled triangle.

/*
(highX,highY)
|*
| *
|  *
|   *
|    *
|-----*(lowX,lowY)
 */

// with lower right corner (lowX,lowY) and top (highX, highY).
// depending upon the cases print "inside" or "outside"
// use the same test cordinates to test your code
// use this equation of hypotenuse y = -(4/3)x + 4 to solve
// sample test cases(1,-3),(0,0),(5,9),(1,2)

var x1:Double = 1
var y1:Double = 2
var lowX = 3
var lowY = 0
var highX = 0
var highY = 4

// print("-----------------------------------")

let y_h = -(4/3)*x1 + 4
if y1 < y_h {
    print("Inside")
} else {
    print("Outside")
}
 
//**************** END OF QUESTION 3 ****************
 
//**************** QUESTION 4 ****************

// Using loops
// 4.a) Calculate the minimim value of x for which 8ˣ>4000000000 and print with a message.

// print("-----------------------------------")
var i = 2;
var min:Int=0;
while(i>1)
{
    var t: Decimal
    t = pow(8,i)
    if(t>4000000000)
    {
        break;
    }
    min=i
    i+=1;
}
print("Minimum value of x is : \(i)");

print("The minimum value of x_n for which 8^x_n > 4000000000 is \(x_n)")

// 4.b) Let's say there is an n x n grid. We want to connect the diagonals of the grid
// such that when we print the grid it prints a cross pattern like the format shown below.
// To get the required output, pick special symbols by going to Edit > Emoji & Symbols in Xcode.
// Search for snow to get the both emojis
// Note : Your code should work for any odd value of n, for example, 1, 9, and 147.
// Hint : Use terminator in print statements and loops.
// Sample output for n = 17

//❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️
//❄️❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️❄️
//❄️🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅❄️
//❄️🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅❄️
//❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️
//❄️🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅❄️🎅❄️🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅🎅❄️🎅❄️🎅🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️
//❄️🎅🎅🎅🎅❄️🎅🎅🎅🎅🎅❄️🎅🎅🎅🎅❄️
//❄️🎅🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅🎅❄️
//❄️🎅🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅🎅❄️
//❄️🎅❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️🎅❄️
//❄️❄️🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅🎅❄️❄️
//❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️❄️


// print("-----------------------------------")
let n = 17

for i in 0..<n{
    for j in 0..<n{
        if i == j || i + j == n - 1 || i==0 || j==0 || i==n-1 || j==n-1 {
            print("❄️", terminator: "")
        } else {
            print("🎅", terminator: "")
        }
    }
    print("")
}

//**************** END OF QUESTION 4 ****************
 
//**************** QUESTION 5 ****************

// Using Strings
// 5.a) Replace the character "a" in original string with "@" and print the new string.
// var original = "This string contains a very few a's."
var original = "This string contains a very few a's."

let newString = original.replacingOccurrences(of: "a", with: "@")

print("New string: \(newString)")


// 5.b) Declare 2 strings str1 and str2 as "go, bearcats!" and "GO, BEARCATS!", respectively and compare them.
// If the 2 strings are equal, print str1 and str2 are equal, else str1 and str2 are not equal.


// print("-----------------------------------")
let str1 = "go, bearcats!"
let str2 = "GO, BEARCATS!"

if str1.lowercased() == str2.lowercased() {
    print("str1 and str2 are equal")
} else {
    print("str1 and str2 are not equal")
}


// 5.c) Given a pair of non empty strings. Count the number of matching characters in those strings (consider the single count for the character which have duplicates in the strings).
// Input : s1 = "philadelphia"
//         s2 = "phillies"
// Output : 5
// (i.e. matching characters :- p,h,i,l,e)
// Hint : You may use Set() to get the unique characters in a string.

// print("-----------------------------------")
let s1 = "philadelphia"
let s2 = "phillies"
let set1 = Set(s1)
let set2 = Set(s2)
let common = set1.intersection(set2)
print("The number of matching characters is: \(common.count)")


// 5.d) Write Swift code to trim leading and trailing emoji 🔥 character in a given string.
// var myString1 = "🔥🔥🔥🔥Bearcats🔥🔥🔥🔥🔥🔥🔥"
// expected output is "Bearcats"
var myString1 = "🔥🔥🔥🔥Bearcats🔥🔥🔥🔥🔥🔥🔥"

let emoji = "🔥"

while myString1.hasPrefix(emoji) {
    myString1.removeFirst()
}

while myString1.hasSuffix(emoji) {
    myString1.removeLast()
}

print(myString1)



//**************** END OF QUESTION 5 ****************
