//
//  CalendarExtension.swift
//
//  Created by Darktt on 18/6/13.
//  Copyright © 2018 Darktt. All rights reserved.
//

import Foundation

public extension Calendar
{
    // MARK: - Properties -
    
    public static var gregorian: Calendar = Calendar(identifier: .gregorian)
    
    public static var buddhist: Calendar = Calendar(identifier: .buddhist)
    
    public static var chinese: Calendar = Calendar(identifier: .chinese)
    
    public static var coptic: Calendar = Calendar(identifier: .coptic)
    
    public static var ethiopicAmeteMihret: Calendar = Calendar(identifier: .ethiopicAmeteMihret)
    
    public static var ethiopicAmeteAlem: Calendar = Calendar(identifier: .ethiopicAmeteAlem)
    
    public static var hebrew: Calendar = Calendar(identifier: .hebrew)
    
    public static var iso8601: Calendar = Calendar(identifier: .iso8601)
    
    public static var indian: Calendar = Calendar(identifier: .indian)
    
    public static var islamic: Calendar = Calendar(identifier: .islamic)
    
    public static var islamicCivil: Calendar = Calendar(identifier: .islamicCivil)
    
    public static var japanese: Calendar = Calendar(identifier: .japanese)
    
    public static var persian: Calendar = Calendar(identifier: .persian)
    
    public static var republicOfChina: Calendar = Calendar(identifier: .republicOfChina)
    
    public static var islamicTabular: Calendar = Calendar(identifier: .islamicTabular)
    
    public static var islamicUmmAlQura: Calendar = Calendar(identifier: .islamicUmmAlQura)
    
    // MARK: - Methods -
    // MARK: Initial Method
    
    public func numberOfDaysInMonth(for date: Date) -> Int
    {
        let range: Range<Int>? = self.range(of: .day, in: .month, for: date)
        
        return range!.count
    }
}
