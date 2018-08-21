//
//  StylesTests.swift
//  Silver
//
//  Created by Oscar Silver on 2018-08-08.
//  Copyright © 2018 Silver. All rights reserved.
//

import Foundation
import XCTest
@testable import Styles

class StyleSetupTests: XCTestCase {
    private lazy var font = UIFont.systemFont(ofSize: 16)

    func testLabelSetup() {
        let style = LabelStyle(font: font,
                               backgroundColor: .white,
                               textColor: .black,
                               textAlignment: .center,
                               numberOfLines: 1,
                               cornerRadius: 20)
        let label = UILabel(style: style)

        XCTAssertEqual(label.font, style.font)
        XCTAssertEqual(label.textColor, style.textColor)
        XCTAssertEqual(label.textAlignment, style.textAlignment)
        XCTAssertEqual(label.numberOfLines, style.numberOfLines)
        XCTAssertEqual(label.layer.cornerRadius, style.cornerRadius)
    }
}
