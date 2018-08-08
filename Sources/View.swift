//
//  View.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

open class View: UIView {

    //MARK: - Initialization
    public init(style: ViewStyle) {
        super.init(frame: .zero)
        setup(with: style)
    }

    required public init?(coder aDecoder: NSCoder) { requiredInit }
}

//MARK: - Private Methods
private extension View {
    func setup(with style: ViewStyle) {
        backgroundColor = style.color

        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }

        if let shadow = style.shadow {
            layer.shadowColor = shadow.color.cgColor
            layer.shadowRadius = shadow.radius
            layer.shadowOpacity = shadow.opacity
        }

        if let border = style.border {
            layer.borderColor = border.color.cgColor
            layer.borderWidth = border.width
        }
    }
}
