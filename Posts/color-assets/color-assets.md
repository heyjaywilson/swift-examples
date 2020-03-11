# The basics of Color Assets

I made a screen cast about how to use Color Assets. Find it on [YouTube here](https://www.youtube.com/watch?v=_-3PK2yu8Fk).

Before getting started, what are **Color Assets**? Color Assets live in the `.xcassets` folder and are colors that can be used in a project. You can use a color picker to assign the color and then call that color’s name in your app.

To add an asset to your project
1. Navigate to the `Assets.xcassets` file
2. Click the `+` in the bottom left
3. Choose `New Color Set` from the menu
4. Double click on the Color to give it a new name
![](https://github.com/maeganjwilson/swift-examples/blob/master/Posts/color-assets/add%20color%20asset.gif?raw=true)

To adjust the color of the asset, open the inspector on the right.
![](https://github.com/maeganjwilson/swift-examples/blob/master/Posts/color-assets/inspector.png?raw=true)
In the Inspector, you can change the name of the color set, change what devices to use it on, whether this color is different based on light/dark mode of the device, and change the colors using the sliders for Red, Green, Blue, and opacity. There’s also an option to change based on localization since different cultures have different meanings to different colors.

Once you change settings for Devices, Appearances, and Localization, you will need to click on the proper color swatch to change the color. 
![](https://github.com/maeganjwilson/swift-examples/blob/master/Posts/color-assets/Screen%20Shot%202020-03-11%20at%207.30.25%20AM.png?raw=true)

Any time you want to use the Color Asset in your code, you need to call it.

```swift
// in iOS:
let color = UIColor(named: "color_name_here")

// in macOS:
let color = NSColor(named: "color_name_here")
```

And that’s the basics of utilizing Color Assets.

---

If you enjoy my posts, streams, and apps, consider encouraging by efforts.

<a href="https://www.buymeacoffee.com/appsbymw" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/arial-blue.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
