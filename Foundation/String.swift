//
//  String.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 1/29/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import UIKit

extension String {
    
    var length: Int {
        return self.count;
    }
    
    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted).joined(separator: "");
    }
    
    var doubleValue: Double {
        return Double(self) ?? 0;
    }
    
}

extension String {
    func contains(find: String) -> Bool { return self.range(of: find) != nil }
    func containsIgnoringCase(find: String) -> Bool { return self.range(of: find, options: .caseInsensitive) != nil }
}

extension String {
    subscript(_ i: Int) -> String {
        let idx1 = index(startIndex, offsetBy: i)
        let idx2 = index(idx1, offsetBy: 1)
        return String(self[idx1..<idx2])
    }
    
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return String(self[start ..< end])
    }
    
    subscript (r: CountableClosedRange<Int>) -> String {
        let startIndex =  self.index(self.startIndex, offsetBy: r.lowerBound)
        let endIndex = self.index(startIndex, offsetBy: r.upperBound - r.lowerBound)
        return String(self[startIndex...endIndex])
    }
}

extension String {
    mutating func insert(string:String, index:Int) {
        self.insert(contentsOf: string, at: self.index(self.startIndex, offsetBy: index) )
    }
}
