//
//  TimeZoneExtension.swift
//  DTExtension
//
//  Created by EdenLi on 2018/1/10.
//  Copyright © 2018年 Darktt. All rights reserved.
//

import Foundation

public extension TimeZone
{
    /// Greenwich Mean Time
    public static var GMT: TimeZone = TimeZone(abbreviation: "GMT")!
    
    /// Coordinated Universal Time
    public static var UTC: TimeZone = TimeZone(secondsFromGMT: 0)!
    
    /// Japan Standard Time
    public static var JST: TimeZone = TimeZone(abbreviation: "GMT+0900")!
    
    /// China Standard Time, for Taipei(Taiwan), Beijing(China), Shanghai(China), etc.
    public static var CST: TimeZone = TimeZone(abbreviation: "GMT+0800")!
    
    /// Singapore Time
    public static var SGT: TimeZone = TimeZone(abbreviation: "GMT+0800")!
    
    /// Hong Kong Time
    public static var HKT: TimeZone = TimeZone(abbreviation: "GMT+0800")!
}
