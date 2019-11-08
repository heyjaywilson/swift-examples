---
title: Functions in Swift Part 2
published: false
description: This will go over more advanced features in Functions like argument labels, implicit returns, and multiple return values.
tags: swift
canonical_url: https://blog.appsbymw.com/posts/functions-in-swift-part-2
series: Functions in Swift
---

# Functions in Swift Part 2

This is a continuation on Functions in Swift Part 1. This article will cover more advanced features in Functions like argument labels, implicit returns, and multiple return values.

## Topics Covered in this post
- [Argument Labels](#argument-values)
- [Implicit Returns](#implicit-returns)
- [Multiple Return Values](#multiple-return-values)

# Argument Labels

Argument labels are the parameter names that functions take in. When declaring argument labels, there are options to have them ignored or labeled as something different when calling the functions.

## Omit argument labels

To omit argument labels use a `_` before the parameter name. A parameter name is still neccessary to access the argument's value inside the function.

This might be wanted to make the function more readable.

### Example

```swift

func addFour(_ num: Int) {
    print num + 4
}

addFour(2) // Prints 6

```

In the example, `num` is not needed when calling `addFour`, but when decalring the function I still had to 

## Specifying argument labels

To give a parameter name a different label, declare the label before the name.

```swift

func functionName(argumentName parameterName: ParameterType){
    // DO SOMETHING
}

```

When using the parameter inside the function, the parameter name will need to be used.

# Implicit Returns

## Example

# Multiple Return Values

## Examples