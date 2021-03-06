import Foundation
import XCTest
@testable import Styles

class StyleSetupTests: XCTestCase {
    private lazy var font = UIFont.systemFont(ofSize: 16)

    func testLabelSetup() {
        let style = LabelStyle(font: font, backgroundColor: .white, textColor: .black,
                               textAlignment: .center, numberOfLines: 1, cornerRadius: 20)

        let text = "Test"
        let label = UILabel(text: text, style: style)

        XCTAssertEqual(label.text, text)
        XCTAssertEqual(label.font, style.font)
        XCTAssertEqual(label.textColor, style.textColor)
        XCTAssertEqual(label.textAlignment, style.textAlignment)
        XCTAssertEqual(label.numberOfLines, style.numberOfLines)
        XCTAssertEqual(label.layer.cornerRadius, style.cornerRadius)
    }

    func testButtonSetup() {
        let style = ButtonStyle(font: font, color: .black, textColor: .white, cornerRadius: 20, shadow: nil)
        let title = "Test"
        let button = UIButton(title: title, image: nil, style: style)

        XCTAssertEqual(button.titleLabel?.font, style.font)
        XCTAssertEqual(button.backgroundColor, style.color)
        XCTAssertEqual(button.titleLabel?.textColor, style.textColor)
        XCTAssertEqual(button.layer.cornerRadius, style.cornerRadius)
    }

    func testImageSetup() {
        let style = ImageViewStyle(contentMode: .scaleAspectFit, cornerRadius: 30, borderStyle: nil, tintColor: .blue)
        let image = UIImage()
        let imageView = UIImageView(image: image, style: style)

        XCTAssertEqual(imageView.contentMode, style.contentMode)
        XCTAssertEqual(imageView.layer.cornerRadius, style.cornerRadius)
        XCTAssertEqual(imageView.tintColor, style.tintColor)
        XCTAssertEqual(imageView.image?.renderingMode, .alwaysTemplate)
    }

    func testStackViewSetup() {
        let style = StackViewStyle(axis: .vertical, distribution: .fill, alignment: .center, spacing: 20)
        let firstSubView = UIView(frame: .zero)
        let secondSubView = UIView(frame: .zero)
        let stackView = UIStackView(views: [firstSubView, secondSubView], style: style)

        XCTAssertEqual(stackView.axis, style.axis)
        XCTAssertEqual(stackView.distribution, style.distribution)
        XCTAssertEqual(stackView.alignment, style.alignment)
        XCTAssertEqual(stackView.spacing, style.spacing)
        XCTAssertEqual(stackView.subviews.count, 2)
    }

    func testTextFieldSetup() {
        let style = TextFieldStyle(font: font, color: .red, textColor: .red,
                                   tintColor: .red, textAlignment: .center, keyboardType: .alphabet)
        let placeholder = "Test"
        let textField = UITextField(placeholder: placeholder, style: style)

        XCTAssertEqual(textField.font, style.font)
        XCTAssertEqual(textField.backgroundColor, style.color)
        XCTAssertEqual(textField.textColor, style.textColor)
        XCTAssertEqual(textField.tintColor, style.tintColor)
        XCTAssertEqual(textField.textAlignment, style.textAlignment)
        XCTAssertEqual(textField.keyboardType, style.keyboardType)
        XCTAssertEqual(textField.placeholder, placeholder)
    }

    func testViewSetup() {
        let style = ViewStyle(color: .black, cornerRadius: 30, shadow: nil, border: nil)
        let view = UIView(style: style)

        XCTAssertEqual(view.backgroundColor, style.color)
        XCTAssertEqual(view.layer.cornerRadius, style.cornerRadius)
    }
}
