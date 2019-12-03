//
//  UIView+Additionals.swift
//  Vezu
//
//  Created by Ольга on 07/05/2019.
//  Copyright © 2019 VezuAppDevTeam. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviewThatsFit(_ subView: UIView) {
        self.addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        subView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        subView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        subView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
