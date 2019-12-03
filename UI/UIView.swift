//
//  UIView.swift
//  Sberleasing
//
//  Created by Nikolay Khramchenko on 1/29/18.
//  Copyright © 2018 Nikolay Khramchenko. All rights reserved.
//


import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.layer.cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set { layer.borderColor = newValue?.cgColor; }
    }
}

extension UIView {
    class func colored(color: UIColor) -> UIView {
        let view = UIView();
        view.backgroundColor = color;
        return view;
    }
}

extension UIView {
    var firstResponder: UIView? {
        guard !isFirstResponder else { return self }
        
        for subview in subviews {
            if let firstResponder = subview.firstResponder {
                return firstResponder
            }
        }
        
        return nil
    }
}

extension UIView {
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
    
    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                   shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
                   shadowOpacity: Float = 0.15,
                   shadowRadius: CGFloat = 3.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }
    
    func drawShadow(with color: CGColor = UIColor.black.cgColor) {
        addShadow(shadowColor: color, shadowOffset: CGSize(width: 0.0, height: 2.0))
    }
    
    func drawShadow() {
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = 3;
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1;
        layer.masksToBounds = false
    }
}
