//
//  CommonStyles.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

private let centerTextStyle = ClassStyle(forClass: .centerText)
    .align(.center)

private let centerDivXStyle = ClassStyle(forClass: .centerDivX)
    .margin(left: .auto, right: .auto)

private let centerDivYStyle = ClassStyle(forClass: .centerDivY)
    .margin(top: .auto, bottom: .auto)

private let imageFullWidth = ClassStyle(forClass: .imageFullWidth)
    .margin(top: .pixel(20), bottom: .pixel(20))
    .size(width: .percentage(100))

private let imageHalfWidth = ClassStyle(forClass: .imageHalfWidth)
    .margin(left: .auto, top: .pixel(20), right: .auto, bottom: .pixel(20))
    .size(width: .percentage(50))

private let linkStyle = ClassStyle(forClass: .link)
    .foregroundColor(.DarkHoverNavBarItem)
    .font(size: .percentage(100))
    .textDecoration(.none)

private let linkHoverStyle = ClassStyle(forClass: .link, withCSSTag: .hover)
    .textDecoration(.underline)

public let desktopHiddenStyle = ClassStyle(forClass: .desktopHidden)
    .display(.none)

public let mobileHiddenStyle = ClassStyle(forClass: .mobileHidden)
    .display(.none)

public let commonStyles = [
    centerTextStyle,
    centerDivXStyle,
    centerDivYStyle,
    imageFullWidth,
    imageHalfWidth,
    linkStyle,
    linkHoverStyle,
]
