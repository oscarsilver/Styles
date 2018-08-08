//
//  TextField.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public class TextField: UITextField {
    
    //MARK: - Initialization
    public init(placeholder: String? = nil, style: TextFieldStyle) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        setup(with: style)
    }

    required init?(coder aDecoder: NSCoder) { requiredInit }
}

//MARK: - Private Methods
private extension TextField {
    func setup(with style: TextFieldStyle) {
        font = style.font
        backgroundColor = style.color
        textColor = style.textColor
        textAlignment = style.textAlignment
        keyboardType = style.keyboardType
        tintColor = style.tintColor
    }
}
