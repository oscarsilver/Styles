import UIKit

public struct ImageViewStyle {
    let contentMode: UIView.ContentMode
    let cornerRadius: CGFloat?
    let borderStyle: BorderStyle?
    let tintColor: UIColor?

    public init(contentMode: UIView.ContentMode,
         cornerRadius: CGFloat? = nil,
         borderStyle: BorderStyle? = nil,
         tintColor: UIColor? = nil) {
        self.contentMode = contentMode
        self.cornerRadius = cornerRadius
        self.borderStyle = borderStyle
        self.tintColor = tintColor
    }
}

public extension UIImageView {
    convenience init(image: UIImage? = nil, style: ImageViewStyle) {
        self.init(frame: .zero)
        setup(with: style, image: image)
    }

    private func setup(with style: ImageViewStyle, image: UIImage?) {
        contentMode = style.contentMode
        tintColor = style.tintColor

        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = true
        }

        if let borderStyle = style.borderStyle {
            layer.borderColor = borderStyle.color.cgColor
            layer.borderWidth = borderStyle.width
        }

        if let image = image {
            let renderingMode: UIImage.RenderingMode = style.tintColor != nil ? .alwaysTemplate : .alwaysOriginal
            self.image = image.withRenderingMode(renderingMode)
        }
    }
}
