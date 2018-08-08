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
    let size: CGSize?

    public init(
        font: UIFont,
        backgroundColor: UIColor = .clear,
        textColor: UIColor,
        textAlignment: NSTextAlignment = .center,
        numberOfLines: Int = 1,
        cornerRadius: CGFloat? = nil,
        size: CGSize? = nil
        ) {
        self.font = font
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
        self.cornerRadius = cornerRadius
        self.size = size
    }
}
