//
//  BtnHelper.swift
//  iOSCalculator
//
//  Created by Wasif Kazmi on 14/09/2023.
//
import UIKit

class roundButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = min(bounds.width, bounds.height) / 2
    }
}
