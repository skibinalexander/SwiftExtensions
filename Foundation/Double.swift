//
//  Double.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 2/8/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import Foundation

extension Double {
    func cleanValue(_ c: Int) -> String {
        let formatter = NumberFormatter();
        formatter.minimumFractionDigits = 0;
        formatter.minimumIntegerDigits = 1;
        formatter.maximumFractionDigits = c > -1 ? c : 0;
        return formatter.string(from: NSNumber(value: self)) ?? "";
    }
    
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
