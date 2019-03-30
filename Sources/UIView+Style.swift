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

public extension UIView {
    convenience init(style: ViewStyle) {
        self.init(frame: .zero)
        setup(with: style)
    }

    private func setup(with style: ViewStyle) {
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
