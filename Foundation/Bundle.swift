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

extension Bundle {
    func getInfoPlist() -> [String:AnyObject]? {
        var propertyListFormat =  PropertyListSerialization.PropertyListFormat.xml //Format of the Property List.
        if let plistPath = Bundle.main.path(forResource: "Info", ofType: "plist") {
            let plistXML = FileManager.default.contents(atPath: plistPath)!
            do {//convert the data to a dictionary and handle errors.
                return try PropertyListSerialization.propertyList(from: plistXML, options: .mutableContainersAndLeaves, format: &propertyListFormat) as? [String:AnyObject]
            } catch {
                print("Error reading plist: \(error), format: \(propertyListFormat)")
                return nil
            }
        }
        
        return nil
    }
}
