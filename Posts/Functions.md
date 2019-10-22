# Functions

This post is going to explain what a function is and how to use it.

There is a Swift Playground with examples in this post. It can be found at [this link](https://github.com/maeganjwilson/swift-examples/tree/master/Playgrounds/ComputedProperties.playground). Feel free to copy the files or clone the entire [repo](https://github.com/maeganjwilson/swift-examples), but the repo has more than just this post's sample code.

## Topics covered in this post
- What is a Function
- How to define a Function

# What is a Function
According to the Swift documentation, “functions are self-contained chunks of code that perform a specific task.”

Usually a function is defined when the task needs to be repeated or used somewhere else.

# How to define a function
When defining a function, it needs to start with `func`. This tells the swift compiler that the next chunk of code is going to be a function. Then it needs a descriptive name followed by parentheses. Inside the parentheses, is where parameters go.

Function parameters are not required for a function. If the task that the function needs to perform needs data not contained in the function, then that is when parameters are necessary.

After the parameters are defined, a return type needs to be set if the function is returning a value. Not all functions need to return a value, so this step is optional. If declaring a return value, then the function must have a return statement in it. If not, then the compiler will throw an error.

Here is an example of a function.
```Swift
// 1. func 2. Parameters 3. Return declared
func add(numA: Int, numB: Int) -> Int {
		// 4. Task
    let sum = numA + numB
    // 5. Return statement
    return sum
}
```