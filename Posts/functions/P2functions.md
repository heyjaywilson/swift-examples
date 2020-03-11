---
title: Argument Labels for Functions in Swift
published: false
description: This will go over argument labels in Swift functions.
tags: swift
canonical_url: https://blog.appsbymw.com/posts/functions-in-swift-part-2
series: Functions in Swift
---
Functions in Swift - Argument Labels

This post is a continuation of Functions in Swift Part 1 by covering argument labels in Swift functions.

Argument labels are the parameter names that functions take in. When declaring argument labels, there are options to have them ignored or labeled as something different when calling the functions.

# Omit argument labels

To omit argument labels, use a `_` before the parameter name. A parameter name is still necessary to access the argument's value inside the function.

Omitting the argument label might be wanted to make the function more readable.

## Example

```swift

func addFour(_ num: Int) {
    print num + 4
}

addFour(2) // Prints 6
```

In the example, `num` is not needed when calling `addFour`. `num` is used in the function body to add 4 to the integer that is passed to the function.

# Specifying argument labels

To give a parameter name a different label, declare the label before the name.

```swift

func functionName(argumentName parameterName: ParameterType){
    // DO SOMETHING
}
```

When using the parameter inside the function, the parameter name will need to be used. This Swift feature is to make functions more sentence like. It allows for the function to be more human-readable.

## Example

```swift
var name = "Maegan"

func setName(to newName: String){
    name = newName
}

print(name) // Maegan

setName(to: "Thorgi")

print(name) // Thorgi
```

In this example, anyone using `setName` can read that the name will change to the string that follows `to`. When working on what the function does, it is also easy to understand since the parameter name is `newName`.



---

If you enjoyed this post and want more, please consider subscribing to my [Patreon](https://www.patreon.com/maeganwilson_) and checking out my other posts!

If you don't like having more subscriptions, consider buying me a coffee by clicking the image below! <a href="https://www.buymeacoffee.com/appsbymw" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>
