//
//  UINavigationBar.swift
//  Vezu
//
//  Created by Пользователь on 04/07/2019.
//  Copyright © 2019 VezuAppDevTeam. All rights reserved.
//

import UIKit

extension UINavigationBar {
    func setGradientBackground(colors: [UIColor], startPoint: CAGradientLayer.Point = .custion(point: CGPoint(x: 0.0, y: 0.5)),
                               endPoint: CAGradientLayer.Point = .bottomLeft) {
        var updatedFrame = bounds
        updatedFrame.size.height += self.frame.origin.y
        let gradientLayer = CAGradientLayer(frame: updatedFrame, colors: colors, startPoint: startPoint, endPoint: endPoint)
        setBackgroundImage(gradientLayer.createGradientImage(), for: UIBarMetrics.default)
    }
}
