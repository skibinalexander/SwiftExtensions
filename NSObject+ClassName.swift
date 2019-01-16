//
//  NSObject+ClassName.swift
//  Sberleasing
//
//  Created by Пользователь on 22.10.2018.
//  Copyright © 2018 Sberbank Leasing Frontend System. All rights reserved.
//

import Foundation

extension NSObject {
    
    var className: String {
        return String(describing: type(of: self))
    }
    
    static var className: String {
        return String(describing: self)
    }
    
}
