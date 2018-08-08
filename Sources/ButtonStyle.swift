//
//  ButtonStyle.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-09.
//

import UIKit

public struct ButtonStyle {
    let font: UIFont
    let color: UIColor
    let textColor: UIColor
    let height: CGFloat?
    let cornerRadius: CGFloat?
    let gradient: Gradient?
    let shadow: ShadowStyle?

    public init(font: UIFont,
         color: UIColor,
         textColor: UIColor,
         height: CGFloat? = nil,
         cornerRadius: CGFloat = 0,
         gradient: Gradient? = nil,
         shadow: ShadowStyle? = nil
        ) {
        self.font = font
        self.color = color
        self.textColor = textColor
        self.height = height
        self.cornerRadius = cornerRadius
        self.gradient = gradient
        self.shadow = shadow
    }
}
