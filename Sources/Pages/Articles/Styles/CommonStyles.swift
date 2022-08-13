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

private let linkStyle = ClassStyle(forClass: .link)
    .foregroundColor(.DarkHoverNavBarItem)
    .font(size: .percentage(100))
    .textDecoration(.none)

private let linkHoverStyle = ClassStyle(forClass: .link, withCSSTag: .hover)
    .textDecoration(.underline)

public let commonStyles = [
    centerTextStyle,
    centerDivXStyle,
    centerDivYStyle,
    linkStyle,
    linkHoverStyle
]
