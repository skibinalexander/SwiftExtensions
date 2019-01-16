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
    
    func toNormalDateAndTime() -> String {
        return self.toString(format: "dd.MM.YYYY HH:mm");
    }
    
    var year: Int {
        get {
            let calendar = Calendar.current;
            let components = calendar.dateComponents([.year], from: self);
            return components.year!;
        }
    }
}
