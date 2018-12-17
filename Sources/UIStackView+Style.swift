import UIKit

public struct StackViewStyle {
    let axis: NSLayoutConstraint.Axis
    let distribution: UIStackView.Distribution
    let alignment: UIStackView.Alignment
    let spacing: CGFloat

    public init(axis: NSLayoutConstraint.Axis = .vertical,
         distribution: UIStackView.Distribution = .fill,
         alignment: UIStackView.Alignment = .fill,
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
