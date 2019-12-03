//
//  Date.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 1/31/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import Foundation

extension Date {
    static func create(date: String, format: String) -> Date? {
        let formatter = DateFormatter();
        formatter.dateFormat = format;
        return formatter.date(from: date);
    }
    
    func toString(format: String) -> String {
        let formatter = DateFormatter();
        formatter.dateFormat = format;
        return formatter.string(from: self);
    }
    
    func toNormalDate() -> String {
        return self.toString(format: "dd.MM.YYYY");
    }
    
    func toServerDateString() -> String {
        return self.toString(format: "YYYY-MM-dd");
    }
    
    func toNormalDateAndTime() -> String {
        return self.toString(format: "dd.MM.YYYY HH:mm");
    }
    
    func toNormalTime() -> String {
        return self.toString(format: "HH:mm")
    }
    
    func dateMonthDay() -> String {
        return self.toString(format: "MM-dd")
    }
    
    func weakDayMonth() -> String {
        return self.toString(format: "E, d MMM");
    }
    
    func timeHM() -> String {
        return self.toString(format: "HH:mm")       //  00:00
    }
    
    var year: Int {
        get {
            let calendar = Calendar.current;
            let components = calendar.dateComponents([.year], from: self);
            return components.year!;
        }
    }
}

extension Date {
    func normalDate() -> String { return self.toString(format: "dd.MM.YYYY") }
    func normalDateAndTime() -> String { return self.toString(format: "dd.MM.YYYY HH:mm") }
    func DayMonth() -> String { return self.toString(format: "dd.MM") }
}

extension Date {
    //  MARK: Initialization
    init(milliseconds: UInt) {
        self = Date(timeIntervalSince1970: TimeInterval(milliseconds) / 1000)
    }
    
    init?(milliseconds: UInt?) {
        if let ms = milliseconds {
            self = Date(timeIntervalSince1970: TimeInterval(ms) / 1000)
        }
        
        return nil
    }
    
    func toMillis() -> UInt! {
        return UInt(self.timeIntervalSince1970 * 1000)
    }
}
