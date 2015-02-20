//
//  Constants.swift
//  AudioTest
//
//  Created by Scott Krulcik on 2/20/15.
//  Copyright (c) 2015 Scott Krulcik. All rights reserved.
//

import Foundation
import UIKit

extension UIColor
{
    class func hexColor(hexstr:String)->UIColor{
        let scan = NSScanner(string: hexstr)
        var numerical:UInt32 = 0
        if scan.scanHexInt(&numerical){
            numerical &= 0xFFFFFF //mask out blank channel
            let red = CGFloat((numerical & 0xFF0000) >> 16)/255.0
            let green = CGFloat((numerical & 0x00FF00) >> 8)/255.0
            let blue = CGFloat(numerical & 0xFF)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
        return whiteColor()
    }
}

struct ColorProfile {
    let primary = UIColor.hexColor("227766")
    let compoundBlue = UIColor.hexColor("2277AA")
    let compoundBrown = UIColor.hexColor("884444")
}

let Color = ColorProfile()