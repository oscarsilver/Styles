//
//  StackViewStyle.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public struct StackViewStyle {
    let axis: UILayoutConstraintAxis
    let distribution: UIStackViewDistribution
    let alignment: UIStackViewAlignment
    let spacing: CGFloat

    public init(axis: UILayoutConstraintAxis = .vertical,
         distribution: UIStackViewDistribution = .fill,
         alignment: UIStackViewAlignment = .fill,
         spacing: CGFloat = 0) {
        self.axis = axis
        self.distribution = distribution
        self.alignment = alignment
        self.spacing = spacing
    }
}
