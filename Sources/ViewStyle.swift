//
//  ViewStyle.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public struct ViewStyle {
    let color: UIColor
    let cornerRadius: CGFloat?
    let shadow: ShadowStyle?
    let border: BorderStyle?

    public init(color: UIColor,
         cornerRadius: CGFloat? = nil,
         shadow: ShadowStyle? = nil,
         border: BorderStyle? = nil
        ) {
        self.color = color
        self.cornerRadius = cornerRadius
        self.shadow = shadow
        self.border = border
    }
}
