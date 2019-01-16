//
//  Bundle.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 1/29/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import Foundation

extension Bundle {
    var versionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String;
    }
    var buildNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String;
    }
}
