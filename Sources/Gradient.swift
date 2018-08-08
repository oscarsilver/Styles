//
//  Gradient.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public typealias GradientPoint = (x: CGPoint, y: CGPoint)
public typealias GradientColor = (start: UIColor, end: UIColor)

public enum Gradient {
    case leftRight(UIColor, UIColor)
    case rightLeft(UIColor, UIColor)
    case topBottom(UIColor, UIColor)
    case bottomTop(UIColor, UIColor)
    case topLeftBottomRight(UIColor, UIColor)
    case bottomRightTopLeft(UIColor, UIColor)
    case topRightBottomLeft(UIColor, UIColor)
    case bottomLeftTopRight(UIColor, UIColor)

    var point: GradientPoint {
        switch self {
        case .leftRight:
            return (x: CGPoint(x: 0, y: 0.5), y: CGPoint(x: 1, y: 0.5))
        case .rightLeft:
            return (x: CGPoint(x: 1, y: 0.5), y: CGPoint(x: 0, y: 0.5))
        case .topBottom:
            return (x: CGPoint(x: 0.5, y: 0), y: CGPoint(x: 0.5, y: 1))
        case .bottomTop:
            return (x: CGPoint(x: 0.5, y: 1), y: CGPoint(x: 0.5, y: 0))
        case .topLeftBottomRight:
            return (x: CGPoint(x: 0, y: 0), y: CGPoint(x: 1, y: 1))
        case .bottomRightTopLeft:
            return (x: CGPoint(x: 1, y: 1), y: CGPoint(x: 0, y: 0))
        case .topRightBottomLeft:
            return (x: CGPoint(x: 1, y: 0), y: CGPoint(x: 0, y: 1))
        case .bottomLeftTopRight:
            return (x: CGPoint(x: 0, y: 1), y: CGPoint(x: 1, y: 0))
        }
    }

    var colors: GradientColor {
        switch self {
        case .leftRight(let start, let end):
            return (start: start, end: end)
        case .rightLeft(let start, let end):
            return (start: start, end: end)
        case .topBottom(let start, let end):
            return (start: start, end: end)
        case .bottomTop(let start, let end):
            return (start: start, end: end)
        case .topLeftBottomRight(let start, let end):
            return (start: start, end: end)
        case .bottomRightTopLeft(let start, let end):
            return (start: start, end: end)
        case .topRightBottomLeft(let start, let end):
            return (start: start, end: end)
        case .bottomLeftTopRight(let start, let end):
            return (start: start, end: end)
        }
    }
}

public class GradientLayer: CAGradientLayer {
    var gradient: Gradient? {
        didSet {
            startPoint = gradient?.point.x ?? .zero
            endPoint = gradient?.point.y ?? .zero

            if let gradient = gradient {
                colors = [gradient.colors.start.cgColor, gradient.colors.end.cgColor]
            }
        }
    }
}

public extension UIView {
    var gradientLayer: GradientLayer? {
        return layer as? GradientLayer
    }
}

open class GradientView: UIView {
    override open class var layerClass: Swift.AnyClass {
        get {
            return GradientLayer.self
        }
    }
}

open class GradientButton: UIButton {
    override open class var layerClass: Swift.AnyClass {
        get {
            return GradientLayer.self
        }
    }
}
