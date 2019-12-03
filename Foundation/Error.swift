//
//  NSError.swift
//  Vezu
//
//  Created by Пользователь on 09.01.2019.
//  Copyright © 2019 VezuAppDevTeam. All rights reserved.
//

import Foundation

extension Error {
    var code: Int           { return (self as NSError).code }
    var domain: String      { return (self as NSError).domain }
}
