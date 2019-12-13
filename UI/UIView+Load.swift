//
//  UIView+Load.swift
//  Sberleasing
//
//  Created by Alexander Skibin on 13.08.2018.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//

import Foundation
import UIKit

protocol UIViewCreation: UIView {
    static func fromNib() -> Self
}

extension UIViewCreation {
    static func fromNib() -> Self {
        return Bundle.main.loadNibNamed(Self.className, owner: nil, options: nil)![0] as! Self
    }
}

extension UIView {
    class func fromString<T: UIView>(nameNib: String) -> T {
        return Bundle.main.loadNibNamed(String(describing: nameNib), owner: nil, options: nil)![0] as! T
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: self.className, bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}

extension UIView {
    func horizontalShake(durationAnimation: Double, repeatAnimation: Float) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = durationAnimation
        animation.repeatCount = repeatAnimation
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
    }
}
