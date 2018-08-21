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

public extension UIImageView {
    public convenience init(image: UIImage? = nil, style: ImageViewStyle) {
        self.init(frame: .zero)
        setup(with: style, image: image)
    }

    private func setup(with style: ImageViewStyle, image: UIImage?) {
        contentMode = style.contentMode
        tintColor = style.tintColor

        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }

        if let borderStyle = style.borderStyle {
            layer.borderColor = borderStyle.color.cgColor
            layer.borderWidth = borderStyle.width
        }

        if let image = image {
            let renderingMode: UIImageRenderingMode = style.tintColor != nil ? .alwaysTemplate : .alwaysOriginal
            self.image = image.withRenderingMode(renderingMode)
        }
    }
}
