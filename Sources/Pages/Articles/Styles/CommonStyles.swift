//
//  CommonStyles.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

private let centerTextStyle = ClassStyle(forClass: .centerText)
    .align(.center)

private let centerDivContainerXStyle = ClassStyle(forClass: .centerDivContainerX)
    .display(.flex)
    .flexAlign(.center)

private let centerDivContainerYStyle = ClassStyle(forClass: .centerDivContainerY)
    .display(.flex)
    .flexDistribute(.center)

private let centerDivContainerStyle = ClassStyle(forClass: .centerDivContainer)
    .display(.flex)
    .flexDistribute(.center)
    .flexAlign(.center)

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

private let desktopHiddenStyle = MediaStyle(for: .wide,
                                            with: ClassStyle(forClass: .desktopHidden).display(.none))

private let mobileHiddenStyle = MediaStyle(for: .small,
                                           with: ClassStyle(forClass: .mobileHidden).display(.none))

public let commonStyles: [CSSStyle] = [
    centerTextStyle,
    centerDivContainerXStyle,
    centerDivContainerYStyle,
    centerDivContainerStyle,
    imageFullWidth,
    imageHalfWidth,
    linkStyle,
    linkHoverStyle,
    desktopHiddenStyle,
    mobileHiddenStyle
]
