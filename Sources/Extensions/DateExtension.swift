//
//  DateExtension.swift
//
//  Created by Darktt on 16/4/28.
//  Copyright © 2016 Darktt. All rights reserved.
//

import Foundation

fileprivate extension DateFormatter
{
    fileprivate static let shared = DateFormatter()
}

public extension Date
{
    // MARK: - Properties -
    
    public var ISO8061FormatString: String {
        
        let calendar = Calendar.iso8601
        let locale = Locale.enUSPosix
        let timeZone = TimeZone.GMT
        
        let dateFormatter = DateFormatter.shared
        dateFormatter.calendar = calendar
        dateFormatter.locale = locale
        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        
        return dateFormatter.string(from: self)
    }
    
    public init?(string: String, format: String)
    {
        let dateFormatter = DateFormatter.shared
        dateFormatter.calendar = Calendar.current
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = format
        
        guard let date: Date = dateFormatter.date(from: string) else {
            
            return nil
        }
        
        self.init(timeIntervalSinceReferenceDate: date.timeIntervalSinceReferenceDate)
    }
    
    public init?(ISO8061String string: String)
    {
        let calendar = Calendar.iso8601
        let locale = Locale.enUSPosix
        let timeZone = TimeZone.GMT
        
        let dateFormatter = DateFormatter.shared
        dateFormatter.calendar = calendar
        dateFormatter.locale = locale
        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        
        guard let date: Date = dateFormatter.date(from: string) else {
            
            return nil
        }
        
        self.init(timeIntervalSinceReferenceDate: date.timeIntervalSinceReferenceDate)
    }
    
    // MARK: - Methods -
    
    public func string(withFormat format: String = "YYYY/MM/dd HH:mm:ss aa", dateFormatter: DateFormatter) -> String
    {
        dateFormatter.calendar = Calendar.current
        dateFormatter.locale = Locale.current
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
    
    public func mingGoDateString(withFormat format: String = "Gyyy/MM/dd HH:mm:ss aa") -> String
    {
        let calendar = Calendar.republicOfChina
        let locale = Locale.zhTWPosix
        
        let dateFormatter = DateFormatter.shared
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.calendar = calendar
        dateFormatter.locale = locale
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
    
    public func japaneseDateString(withFormat format: String = "Gyyy年MM月dd日 HH:mm:ss aa") -> String
    {
        let calendar = Calendar.japanese
        let locale = Locale.jaJPPosix
        
        let dateFormatter = DateFormatter.shared
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.calendar = calendar
        dateFormatter.locale = locale
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
}
