import UIKit

public struct TextFieldStyle {
    let font: UIFont
    let color: UIColor
    let textColor: UIColor
    let tintColor: UIColor
    let textAlignment: NSTextAlignment
    let keyboardType: UIKeyboardType

    public init(
        font: UIFont,
        color: UIColor,
        textColor: UIColor,
        tintColor: UIColor,
        textAlignment: NSTextAlignment = .left,
        keyboardType: UIKeyboardType = .default
        ) {
        self.font = font
        self.color = color
        self.textColor = textColor
        self.tintColor = tintColor
        self.textAlignment = textAlignment
        self.keyboardType = keyboardType
    }
}

public extension UITextField {
    convenience init(placeholder: String? = nil, style: TextFieldStyle) {
        self.init(frame: .zero)
        self.placeholder = placeholder
        setup(with: style)
    }

    private func setup(with style: TextFieldStyle) {
        font = style.font
        backgroundColor = style.color
        textColor = style.textColor
        textAlignment = style.textAlignment
        keyboardType = style.keyboardType
        tintColor = style.tintColor
    }
}
