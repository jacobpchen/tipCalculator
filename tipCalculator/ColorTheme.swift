//
//  ColorTheme.swift
//  tipCalculator
//
//  Created by user176468 on 7/21/20.
//  Copyright © 2020 user176468. All rights reserved.
//

import Foundation
import UIKit
import UIKit.UIColor

extension UIColor {

// MARK: Theme Colors

static var darkBlue: UIColor {
    return UIColor(named: "darkBlue")!
}

static var offWhite: UIColor {
    return UIColor(named: "offWhite")!
}

static var hotPink: UIColor {
    return UIColor(named: "hotPink")!
}

static var charcoal: UIColor {
    return UIColor(named: "charcoal")!
}

static var almostBlack: UIColor {
    return UIColor(named: "almostBlack")!
}

static var mediumBlack: UIColor {
    return UIColor(named: "mediumBlack")!
}

static var blueBlack: UIColor {
    return UIColor(named: "blueBlack")!
}

static var seafoamGreen: UIColor {
    return UIColor(named: "seafoamGreen")!
}

static var black: UIColor {
    return UIColor(named: "black")!
}

static var white: UIColor {
    return UIColor(named: "white")!
}

struct ColorTheme {
    //Instance Vars
    let isDefaultStatusBar: Bool
    let viewControllerBackgroundColor: UIColor
    
    let primaryColor: UIColor
    let primaryTextColor: UIColor
    
    let secondaryColor: UIColor
    
    let accentColor: UIColor
    let outputTextColor: UIColor
    
    static let light = ColorTheme(isDefaultStatusBar: true,
                                  viewControllerBackgroundColor: .offWhite,
                                  primaryColor: .white,
                                  primaryTextColor: .charcoal,
                                  secondaryColor: .darkBlue,
                                  accentColor: .hotPink,
                                  outputTextColor: .almostBlack)

    static let dark = ColorTheme(isDefaultStatusBar: false,
                                 viewControllerBackgroundColor: .almostBlack,
                                 primaryColor: .mediumBlack,
                                 primaryTextColor: .white,
                                 secondaryColor: .blueBlack,
                                 accentColor: .seafoamGreen,
                                 outputTextColor: .white)
}


}
