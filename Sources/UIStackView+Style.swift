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

extension UIStackView {
    public convenience init(views: [UIView] = [], style: StackViewStyle) {
        self.init(frame: .zero)
        setup(with: style)
        views.forEach { addArrangedSubview($0) }
    }

    private func setup(with style: StackViewStyle) {
        axis = style.axis
        distribution = style.distribution
        alignment = style.alignment
        spacing = style.spacing
    }
}
