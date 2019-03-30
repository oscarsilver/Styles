import UIKit

public struct ButtonStyle {
    let font: UIFont
    let color: UIColor
    let textColor: UIColor
    let cornerRadius: CGFloat?
    let shadow: ShadowStyle?
    let border: BorderStyle?

    public init(font: UIFont,
         color: UIColor,
         textColor: UIColor,
         cornerRadius: CGFloat = 0,
         shadow: ShadowStyle? = nil,
         border: BorderStyle? = nil
        ) {
        self.font = font
        self.color = color
        self.textColor = textColor
        self.cornerRadius = cornerRadius
        self.shadow = shadow
        self.border = border
    }
}

public extension UIButton {
    convenience init(title: String? = nil, image: UIImage? = nil, style: ButtonStyle) {
        self.init(frame: .zero)
        setTitle(title, for: .normal)
        setImage(image, for: .normal)
        setup(with: style)
    }

    func setup(with style: ButtonStyle) {
        titleLabel?.font = style.font
        backgroundColor = style.color
        setTitleColor(style.textColor, for: .normal)

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
