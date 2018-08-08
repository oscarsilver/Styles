//
//  ImageViewStyle.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public struct ImageViewStyle {
    let contentMode: UIViewContentMode
    let cornerRadius: CGFloat?
    let borderStyle: BorderStyle?
    let tintColor: UIColor?

    public init(contentMode: UIViewContentMode,
         cornerRadius: CGFloat? = nil,
         borderStyle: BorderStyle? = nil,
         tintColor: UIColor? = nil) {
        self.contentMode = contentMode
        self.cornerRadius = cornerRadius
        self.borderStyle = borderStyle
        self.tintColor = tintColor
    }
}
