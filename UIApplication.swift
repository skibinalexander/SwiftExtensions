//
//  UIApplication.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 2/19/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import UIKit

extension UIApplication {
    func isRunningInFullScreen() -> Bool {
        if let w = self.keyWindow {
            let maxScreenSize = max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height);
            let minScreenSize = min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height);
            let maxAppSize = max(w.bounds.size.width, w.bounds.size.height);
            let minAppSize = min(w.bounds.size.width, w.bounds.size.height);
            return maxScreenSize == maxAppSize && minScreenSize == minAppSize;
        }
        
        return true;
    }
}
