# Marvel - Mobile Exercise #

This is a iOS app created using Swift and the [Marvel Developer API](https://developer.marvel.com/).
You can search and save the chracteres you like most.


## Requirements

* Xcode 11.4.1
* iOS 11.0 +
* Swift 5

## Architecture

This app is using `MVVM`, with `Interactor (Called Logic in this project)` and `Routers`, taking advantage of `Coordinators` on navigate between screens.
All the `UIKit` stuff are only at `Coordinators` and `UIViewControllers`. The app's core do not rely on UIKit.

The data flow starts from the user interface on the screen to the ViewModel then to the Logic class and then to the router's class when we need to go to another screen. The service layer is injected into the Logic, so it's easy to replace  network calls with mocked jsons.

Example:
```Swift
class CharacterCatalogLogic {
//...
    convenience init(router: CharacterCatalogRouterable?) {
        if isLaunchedWith(LaunchArguments.mockNetworkResponses) {
            self.init(service: MVLHeroesMockService.shared, router: router)
        } else {
            self.init(service: MarvelAPI.shared.characterService, router: router)
        }
    }
//...
}
```

## Features

* ✅ **No Storyboard:** View develop ~80% in code using ```PureLayout```, with no broken contraints. Cell and custom views are created using XIBs.
* ✅ **Unit Tests:** 6
* ✅ **UITests:** 6
* ✅ **Devices:** from iPhone 8 to 11 Pro Max, Portrait Mode
* ✅ **iOS:** 11.0+.

🌟 💯 All tests passed using above configurations. 🌟

This project takes advantage of `Protocols` and `Generics` to reuse views and cells. Using this swift features we avoid typos when using `reuseIdentifiers`.

On Swift 5 I can use `Result` type to handle network responses better. 

You can favorite a character right from the catalog screen, just do a long press over any item and the options to that character will show up.

## Pods
#### pod 'PureLayout'
Less verbose Auto-Layout constraints: `myView.autoPinEdgesToSuperviewEdges()`.

#### pod 'CCBottomRefreshControl'
Add a activity indicator at the bottom of UIScrollView (UITableView, UICollectionView)

## How to install

* Clone or download the project to your machine.
* At the project directory run: ```bundle install``` and then ```bundle exec pod install```.
* Open XCode10 and build the project using: ```Cmd```+ ```Shift``` + ```B```.
* Build the project for testing using: ```Cmd```+ ```Shift```+ ```U```.
* Run the tests using: ```Cmd``` + ```U```

### A wild build for test error appeared!!!

The build for test process may fail because the ```'pod UITestHelper'``` has it property ```enable_bitcode = YES``` simply change it to ```NO``` and build for test again using ```Cmd```+ ```Shift```+ ```U```.
# MarvelBold
# MarvelBold
# MarvelBold
