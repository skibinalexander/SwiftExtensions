//
//  UIView.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 1/29/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//


import UIKit

extension UIView {
    
    class func colored(color: UIColor) -> UIView {
        let view = UIView();
        view.backgroundColor = color;
        return view;
    }
    
    @IBInspectable var shadow: Bool {
        get {
            return layer.shadowOpacity > 0.0;
        }
        set {
            if newValue == true {
                self.addShadow();
            }
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius;
        }
        set {
            self.layer.cornerRadius = newValue;
            
            // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
            if shadow == false {
                self.layer.masksToBounds = true;
            }
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth;
        }
        set {
            layer.borderWidth = newValue;
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!);
            return color;
        }
        set {
            layer.borderColor = newValue?.cgColor;
        }
    }
    
    
    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                   shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
                   shadowOpacity: Float = 0.4,
                   shadowRadius: CGFloat = 3.0) {
        layer.shadowColor = shadowColor;
        layer.shadowOffset = shadowOffset;
        layer.shadowOpacity = shadowOpacity;
        layer.shadowRadius = shadowRadius;
    }
    
    func drawShadow() {
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 3;
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1;
        layer.masksToBounds = false
    }
    
    
}
