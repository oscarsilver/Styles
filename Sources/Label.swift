//
//  Label.swift
//  Pods-SilverKit_Example
//
//  Created by Oscar Silver on 2018-06-09.
//

import UIKit

public class Label: UILabel {
    private var style: LabelStyle

    // MARK: - Initialization
    public init(text: String? = nil, style: LabelStyle) {
        self.style = style
        super.init(frame: .zero)
        self.text = text
        setup(with: style)
    }

    required init?(coder aDecoder: NSCoder) { requiredInit }

    override public func layoutSubviews() {
        super.layoutSubviews()
        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }
    }

    func update(style newStyle: LabelStyle) {
        self.style = newStyle
        setup(with: newStyle)
    }
}

// MARK: - Private Methods
private extension Label {
    func setup(with style: LabelStyle) {
        font = style.font
        backgroundColor = style.backgroundColor
        textColor = style.textColor
        textAlignment = style.textAlignment
        numberOfLines = style.numberOfLines

        if let size = style.size {
            constrainSize(to: size)
        }
    }
}
