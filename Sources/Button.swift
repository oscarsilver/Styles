//
//  Button.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-09.
//

import UIKit

public class Button: GradientButton {

    // MARK: - Initialization
    public init(title: String? = nil, image: UIImage? = nil, style: ButtonStyle) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setImage(image, for: .normal)
        setup(with: style)
    }

    required init?(coder aDecoder: NSCoder) { requiredInit }
}

// MARK: - Private Methods
private extension Button {
    func setup(with style: ButtonStyle) {
        titleLabel?.font = style.font
        backgroundColor = style.color
        setTitleColor(style.textColor, for: .normal)

        if let height = style.height {
            constrainHeight(to: height)
        }

        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
        }

        if let gradient = style.gradient {
            gradientLayer?.gradient = gradient
        }

        if let shadow = style.shadow {
            layer.shadowColor = shadow.color.cgColor
            layer.shadowRadius = shadow.radius
            layer.shadowOpacity = shadow.opacity
        }
    }
}
