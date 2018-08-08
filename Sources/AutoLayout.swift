//
//  AutoLayout.swift
//  SilverKit
//
//  Created by Oscar Silver on 2018-06-11.
//

import UIKit

public extension UIView {
    public func center(in view: UIView) {
        centerHorizontally(in: view)
        centerVertically(in: view)
    }

    public func centerHorizontally(in view: UIView) {
        self.activate(constraints: [
            centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    public func centerVertically(in view: UIView) {
        self.activate(constraints: [
            centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }

    public func edges(to view: UIView, insets: UIEdgeInsets = UIEdgeInsets(), useSafeArea: Bool = false) {
        horizontalEdges(to: view, insets: insets, useSafeArea: useSafeArea)
        verticalEdges(to: view, insets: insets, useSafeArea: useSafeArea)
    }

    public func top(to view: UIView, offset: CGFloat = 0, useSafeArea: Bool = false) {
        self.activate(constraints: [
            topAnchor.constraint(equalTo: useSafeArea ? view.safeAreaLayoutGuide.topAnchor : view.topAnchor, constant: offset)
            ])
    }

    public func bottom(to view: UIView, offset: CGFloat = 0, useSafeArea: Bool = false) {
        self.activate(constraints: [
            bottomAnchor.constraint(equalTo: useSafeArea ? view.safeAreaLayoutGuide.bottomAnchor : view.bottomAnchor, constant: -offset)
            ])
    }

    public func trailing(to view: UIView, offset: CGFloat = 0, useSafeArea: Bool = false) {
        self.activate(constraints: [
            trailingAnchor.constraint(equalTo: useSafeArea ? view.safeAreaLayoutGuide.trailingAnchor : view.trailingAnchor, constant: -offset)
            ])
    }

    public func leading(to view: UIView, offset: CGFloat = 0, useSafeArea: Bool = false) {
        self.activate(constraints: [
            leadingAnchor.constraint(equalTo: useSafeArea ? view.safeAreaLayoutGuide.leadingAnchor : view.leadingAnchor, constant: offset)
            ])
    }

    public func horizontalEdges(to view: UIView, insets: UIEdgeInsets = UIEdgeInsets(), useSafeArea: Bool = false) {
        leading(to: view, offset: insets.left, useSafeArea: useSafeArea)
        trailing(to: view, offset: insets.right, useSafeArea: useSafeArea)
    }

    public func verticalEdges(to view: UIView, insets: UIEdgeInsets = UIEdgeInsets(), useSafeArea: Bool = false) {
        top(to: view, offset: insets.top, useSafeArea: useSafeArea)
        bottom(to: view, offset: insets.bottom, useSafeArea: useSafeArea)
    }

    public func constrainHeight(to height: CGFloat) {
        self.activate(constraints: [
            heightAnchor.constraint(equalToConstant: height)
            ])
    }

    public func constrainWidth(to width: CGFloat) {
        self.activate(constraints: [
            widthAnchor.constraint(equalToConstant: width)
            ])
    }

    public func constrainWidth(to view: UIView) {
        self.activate(constraints: [
            widthAnchor.constraint(equalTo: view.widthAnchor)
            ])
    }

    public func constrainHeight(to view: UIView) {
        self.activate(constraints: [
            heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
    }

    public func constrainSize(to size: CGSize) {
        constrainHeight(to: size.height)
        constrainWidth(to: size.width)
    }

    public func constrainSize(to view: UIView) {
        constrainHeight(to: view)
        constrainWidth(to: view)
    }

    private func activate(constraints: [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
    }
}
