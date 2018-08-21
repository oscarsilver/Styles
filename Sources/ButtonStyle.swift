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
    let cornerRadius: CGFloat?
    let shadow: ShadowStyle?

    public init(font: UIFont,
         color: UIColor,
         textColor: UIColor,
         cornerRadius: CGFloat = 0,
         shadow: ShadowStyle? = nil
        ) {
        self.font = font
        self.color = color
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.shadow = shadow
    }
}

public extension UIButton {
    public convenience init(title: String?, image: UIImage?, style: ButtonStyle) {
        self.init(frame: .zero)
        setTitle(title, for: .normal)
        setImage(image, for: .normal)
        setup(with: style)
    }

    func setup(with style: ButtonStyle) {
        titleLabel?.font = style.font
        backgroundColor = style.color
        setTitleColor(style.textColor, for: .normal)

        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
        }

        if let shadow = style.shadow {
            layer.shadowColor = shadow.color.cgColor
            layer.shadowRadius = shadow.radius
            layer.shadowOpacity = shadow.opacity
        }
    }
}
