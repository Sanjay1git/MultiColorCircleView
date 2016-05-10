# MultiColorCircleView

[![CI Status](http://img.shields.io/travis/Sanjay/MultiColorCircleView.svg?style=flat)](https://travis-ci.org/Sanjay/MultiColorCircleView)
[![Version](https://img.shields.io/cocoapods/v/MultiColorCircleView.svg?style=flat)](http://cocoapods.org/pods/MultiColorCircleView)
[![License](https://img.shields.io/cocoapods/l/MultiColorCircleView.svg?style=flat)](http://cocoapods.org/pods/MultiColorCircleView)
[![Platform](https://img.shields.io/cocoapods/p/MultiColorCircleView.svg?style=flat)](http://cocoapods.org/pods/MultiColorCircleView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
ARC
iOS8

## Installation

MultiColorCircleView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MultiColorCircleView"
```

## Usage

import MultiColorCircleView
Add an outlet  @IBOutlet weak var multiColorCircleView: MultiColorCircleView!

Change the colors and percentages. The colors count must be equal to the percentages count. First Percentage value corresponds to the first color value. The colors will be filled based on the corresponding percentage value.

multiColorCircleView.colors = [UIColor.grayColor(), UIColor.orangeColor(), UIColor.magentaColor(), UIColor.yellowColor()]
multiColorCircleView.percentages = [0.25, 0.5, 0.125, 0.125]


## Author

Sanjay, raghavb96@gmail.com

## License

MultiColorCircleView is available under the MIT license. See the LICENSE file for more info.
