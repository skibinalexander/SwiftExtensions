//
//  UIView+Drawing.swift
//  Vezu
//
//  Created by Пользователь on 21/05/2019.
//  Copyright © 2019 VezuAppDevTeam. All rights reserved.
//

import UIKit

extension UIView {
    func halfHeightCorner() {
        self.cornerRadius = (self.bounds.height / 2)
    }
}
