//
//  String.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 1/29/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import Foundation

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
    
    func contains(find: String) -> Bool{
        return self.range(of: find) != nil
    }
    
    func containsIgnoringCase(find: String) -> Bool{
        return self.range(of: find, options: .caseInsensitive) != nil
    }
    
}
