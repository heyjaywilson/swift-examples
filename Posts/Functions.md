---
title: Functions in Swift
published: false
description: This post is going to explain what a function is and how to use it.
tags: swift
canonical_url: https://blog.appsbymw.com/posts/functions-in-swift
series: Swift Basics
---
# Functions

This post is going to explain what a function is and how to use it.

There is a Swift Playground with examples in this post. It can be found at [this link](https://github.com/maeganjwilson/swift-examples/tree/master/Playgrounds/ComputedProperties.playground). Feel free to copy the files or clone the entire [repo](https://github.com/maeganjwilson/swift-examples), but the repo has more than just this post's sample code.

## Topics covered in this post
- What is a Function
- How to define a Function
- Using a function

# What is a Function
According to the Swift documentation, “functions are self-contained chunks of code that perform a specific task.”

Usually a function is defined when the task needs to be repeated or used somewhere else.

# How to define a function
When defining a function, it needs to start with `func`. This tells the swift compiler that the next chunk of code is going to be a function. Then it needs a descriptive name followed by parentheses. Inside the parentheses, is where parameters go.

*Function parameters are not required for a function. Parameters are necessary when the task needs data not accessible by the function.*

After the parameters are defined, a return type needs to be set if the function is returning a value. Not all functions need to return a value, so this step is optional. If declaring a return value, then the function must have a return statement in it. If not, then the compiler will throw an error.

Here is an example of a function.
```Swift
// 1.
func add(numA: Int, numB: Int) -> Int {
		// 2.
    let sum = numA + numB
    // 3.
    return sum
}
```

Here is an explanation for the example:

1. Define the function using `func`, the parameters `numA` and `numB`, and the return type `Int`
2. Execute the task, which is to add the two parameters
3. Return the value of the right type

# Using a function

Once a function is written, then it can be called else wehre in the code.

To use `add()` above, it needs to be called and given two integer values.

