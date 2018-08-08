//
//  ImageView.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public class ImageView: UIImageView {
    private var style: ImageViewStyle

    // MARK: - Initialization
    public init(image: UIImage? = nil, style: ImageViewStyle) {
        self.style = style
        let _image: UIImage?
        if style.tintColor != nil {
            _image = image?.withRenderingMode(.alwaysTemplate)
        } else {
            _image = image?.withRenderingMode(.alwaysOriginal)
        }
        super.init(image: _image)
        setup(with: style)
    }

    required public init?(coder aDecoder: NSCoder) { requiredInit }

    override public func layoutSubviews() {
        super.layoutSubviews()
        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }
    }
}

// MARK: - Private Methods
private extension ImageView {
    func setup(with style: ImageViewStyle) {
        contentMode = style.contentMode
        tintColor = style.tintColor

        if let borderStyle = style.borderStyle {
            layer.borderColor = borderStyle.color.cgColor
            layer.borderWidth = borderStyle.width
        }
    }

}
