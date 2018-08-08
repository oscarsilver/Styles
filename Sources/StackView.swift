//
//  StackView.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public class StackView: UIStackView {

    // MARK: - Initialization
    public init(views: [UIView] = [], style: StackViewStyle) {
        super.init(frame: .zero)
        setup(with: style)
        views.forEach { addArrangedSubview($0) }
    }

    required public init(coder: NSCoder) { requiredInit }
}

// MARK: - Private Methods
private extension StackView {
    func setup(with style: StackViewStyle) {
        axis = style.axis
        distribution = style.distribution
        alignment = style.alignment
        spacing = style.spacing
    }
}
