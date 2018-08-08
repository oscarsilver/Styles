//
//  TextFieldStyle.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public struct TextFieldStyle {
    let font: UIFont
    let color: UIColor
    let textColor: UIColor
    let tintColor: UIColor
    let textAlignment: NSTextAlignment
    let keyboardType: UIKeyboardType

    public init(
        font: UIFont,
        color: UIColor,
        textColor: UIColor,
        tintColor: UIColor,
        textAlignment: NSTextAlignment = .left,
        keyboardType: UIKeyboardType = .default
        ) {
        self.font = font
        self.color = color
        self.textColor = textColor
        self.tintColor = tintColor
        self.textAlignment = textAlignment
        self.keyboardType = keyboardType
    }
}
