![SSASideMenu](https://github.com/SSA111/SSASideMenu/blob/master/SSASideMenuCover.png)

[![](http://img.shields.io/badge/iOS-8.0%2B-blue.svg)]() [![](http://img.shields.io/badge/Swift-2.0-blue.svg)]() 

SSASideMenu is a reimplementation of
[romaonthego/RESideMenu](https://github.com/romaonthego/RESideMenu) in
Swift. A iOS 7/8 style side menu with parallax effect.  

![](https://github.com/SSA111/SSASideMenu/blob/master/LeftDemo.gif)
![](https://github.com/SSA111/SSASideMenu/blob/master/RightDemo.gif)


###Usage

```swift
   func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        //MARK : Setup SSASideMenu
        
        let sideMenu = SSASideMenu(contentViewController: UINavigationController(rootViewController: FirstViewController()), leftMenuViewController: LeftMenuViewController(), rightMenuViewController: RightMenuViewController())
        sideMenu.backgroundImage = UIImage(named: "Background.jpg")
        sideMenu.configure(SSASideMenu.MenuViewEffect(fade: true, scale: true, scaleBackground: false))
        sideMenu.configure(SSASideMenu.ContentViewEffect(alpha: 1.0, scale: 0.7))
        sideMenu.configure(SSASideMenu.ContentViewShadow(enabled: true, color: UIColor.blackColor(), opacity: 0.6, radius: 6.0))
        sideMenu.delegate = self
        
        window?.rootViewController = sideMenu
        window?.makeKeyAndVisible()
               
        return true
    }
```
###Installation 
## Installation

### CocoaPods

The recommended approach for installating `ISSideMenu` is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.
For best results, it is recommended that you install via CocoaPods >= **0.28.0** using Git >= **1.8.0** installed via Homebrew.

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Change to the directory of your Xcode project:

``` bash
$ cd /path/to/MyProject
$ touch Podfile
$ edit Podfile
```

Edit your Podfile and add ISSideMenu:

``` bash
platform :ios, '8.0'
pod 'ISSideMenu', '~> 1.0.0'
```

Install into your Xcode project:

``` bash
$ pod install
```

Open your project in Xcode from the .xcworkspace file (not the usual project file)

``` bash
$ open MyProject.xcworkspace
```

Please note that if your installation fails, it may be because you are installing with a version of Git lower than CocoaPods is expecting. Please ensure that you are running Git >= **1.8.0** by executing `git --version`. You can get a full picture of the installation details by executing `pod install --verbose`.

###Customization
```swift
    
    enum SSASideMenuPanDirection: Int {
        case Edge = 0
        case EveryWhere = 1
    }
    
    enum SSASideMenuType: Int {
        case Scale = 0
        case Slip = 1
    }
    
    enum SSAStatusBarStyle: Int {
        case Hidden = 0
        case Black = 1
        case Light = 2
    }

    struct ContentViewShadow {
    
        var enabled: Bool = true
        var color: UIColor = UIColor.blackColor()
        var offset: CGSize = CGSizeZero
        var opacity: Float = 0.4
        var radius: Float = 8.0
    }
    
    struct MenuViewEffect {
        
        var fade: Bool = true
        var scale: Bool = true
        var scaleBackground: Bool = true
        var parallaxEnabled: Bool = true
        var bouncesHorizontally: Bool = true
        var statusBarStyle: SSAStatusBarStyle = .Black
    
    }

    struct ContentViewEffect {
        
        var alpha: Float = 1.0
        var scale: Float = 0.7
        var landscapeOffsetX: Float = 30
        var portraitOffsetX: Float = 30
        var minParallaxContentRelativeValue: Float = -25.0
        var maxParallaxContentRelativeValue: Float = 25.0
        var interactivePopGestureRecognizerEnabled: Bool = true
 
    }
    
    struct SideMenuOptions {
        
        var animationDuration: Float = 0.35
        var panGestureEnabled: Bool = true
        var panDirection: SSASideMenuPanDirection = .Edge
        var type: SSASideMenuType = .Scale
        var panMinimumOpenThreshold: UInt = 60
        var menuViewControllerTransformation: CGAffineTransform = CGAffineTransformMakeScale(1.5, 1.5)
        var backgroundTransformation: CGAffineTransform = CGAffineTransformMakeScale(1.7, 1.7)
        var endAllEditing: Bool = false
    }
    
     // MARK : Storyboard Support
    @IBInspectable var contentViewStoryboardID: String?
    @IBInspectable var leftMenuViewStoryboardID: String?
    @IBInspectable var rightMenuViewStoryboardID: String?
    
    // MARK : Private Properties: MenuView & BackgroundImageView
    @IBInspectable var fadeMenuView: Bool =  true
    @IBInspectable var scaleMenuView: Bool = true
    @IBInspectable var scaleBackgroundImageView: Bool = true
    @IBInspectable var parallaxEnabled: Bool = true
    @IBInspectable var bouncesHorizontally: Bool = true
    
    // MARK : Public Properties: MenuView
    @IBInspectable var statusBarStyle: SSAStatusBarStyle = .Black
    
    // MARK : Private Properties: ContentView
    @IBInspectable var contentViewScaleValue: Float = 0.7
    @IBInspectable var contentViewFadeOutAlpha: Float = 1.0
    @IBInspectable var contentViewInLandscapeOffsetCenterX: Float = 30.0
    @IBInspectable var contentViewInPortraitOffsetCenterX: Float = 30.0
    @IBInspectable var parallaxContentMinimumRelativeValue: Float = -25.0
    @IBInspectable var parallaxContentMaximumRelativeValue: Float = 25.0
    
    // MARK : Public Properties: ContentView
    @IBInspectable var interactivePopGestureRecognizerEnabled: Bool = true
    @IBInspectable var endAllEditing: Bool = false
    
    // MARK : Private Properties: Shadow for ContentView
    @IBInspectable var contentViewShadowEnabled: Bool = true
    @IBInspectable var contentViewShadowColor: UIColor = UIColor.blackColor()
    @IBInspectable var contentViewShadowOffset: CGSize = CGSizeZero
    @IBInspectable var contentViewShadowOpacity: Float = 0.4
    @IBInspectable var contentViewShadowRadius: Float = 8.0
    
    // MARK : Public Properties: SideMenu
    @IBInspectable var animationDuration: Float = 0.35
    @IBInspectable var panGestureEnabled: Bool = true
    @IBInspectable var panDirection: SSASideMenuPanDirection = .Edge
    @IBInspectable var type: SSASideMenuType = .Scale
    @IBInspectable var panMinimumOpenThreshold: UInt = 60
    @IBInspectable var menuViewControllerTransformation: CGAffineTransform = CGAffineTransformMakeScale(1.5, 1.5)
    @IBInspectable var backgroundTransformation: CGAffineTransform = CGAffineTransformMakeScale(1.7, 1.7)
    
    // MARK : Public Properties

    var backgroundImage: UIImage?
    var contentViewController: UIViewController?
    var leftMenuViewController: UIViewController?
    var rightMenuViewController: UIViewController?
```

###Author

Sebastian Andersen

[romaonthego/RESideMenu](https://github.com/romaonthego/RESideMenu) was
authored by Roman Efimov

###License

SSASideMenu is available under the MIT license. See the LICENSE file for more info.
