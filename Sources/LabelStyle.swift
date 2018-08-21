//
//  LabelStyle.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-09.
//

import UIKit

public struct LabelStyle {
    let font: UIFont
    let backgroundColor: UIColor
    let textColor: UIColor
    let textAlignment: NSTextAlignment
    let numberOfLines: Int
    let cornerRadius: CGFloat?

    public init(
        font: UIFont,
        backgroundColor: UIColor = .clear,
        textColor: UIColor,
        textAlignment: NSTextAlignment = .center,
        numberOfLines: Int = 1,
        cornerRadius: CGFloat? = nil
        ) {
        self.font = font
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
        self.cornerRadius = cornerRadius
    }
}

public extension UILabel {
    public convenience init(text: String? = nil, style: LabelStyle) {
        self.init(frame: .zero)
        self.text = text
        setup(with: style)
    }

    private func setup(with style: LabelStyle) {
        font = style.font
        backgroundColor = style.backgroundColor
        textColor = style.textColor
        textAlignment = style.textAlignment
        numberOfLines = style.numberOfLines

        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }
    }
}
