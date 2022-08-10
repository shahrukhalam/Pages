//
//  CommonStyles.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

private let primaryLargeTitleStyle = ClassStyle(forClass: .primaryLargeTitle)
    .padding(top: .pixel(20), bottom: .pixel(20))
    .font(size: .percentage(300)) // 48px

private let secondaryLargeTitleStyle = ClassStyle(forClass: .secondaryLargeTitle)
    .font(size: .percentage(250)) // 40px

private let tertiaryLargeTitleStyle = ClassStyle(forClass: .tertiaryLargeTitle)
    .font(size: .percentage(200)) // 32px

private let primaryTitleStyle = ClassStyle(forClass: .primaryTitle)
    .padding(top: .pixel(10), bottom: .pixel(10))
    .font(size: .percentage(250)) // 40px
    .font(weight: .number(600))

private let secondaryTitleStyle = ClassStyle(forClass: .secondaryTitle)
    .font(size: .percentage(200)) // 32px
    .font(weight: .number(600))

private let primarySubTitleStyle = ClassStyle(forClass: .primarySubTitle)
    .padding(top: .pixel(5), bottom: .pixel(5))
    .font(size: .percentage(200)) // 32px
    .font(weight: .number(400))

private let secondarySubTitleStyle = ClassStyle(forClass: .secondarySubTitle)
    .font(size: .percentage(150)) // 24px
    .font(weight: .number(400))

private let centerTextStyle = ClassStyle(forClass: .centerText)
    .align(.center)

private let centerDivXStyle = ClassStyle(forClass: .centerDivX)
    .margin(left: .auto, right: .auto)

private let centerDivYStyle = ClassStyle(forClass: .centerDivY)
    .margin(top: .auto, bottom: .auto)

public let commonStyles = [
    primaryLargeTitleStyle,
    secondaryLargeTitleStyle,
    tertiaryLargeTitleStyle,
    primaryTitleStyle,
    secondaryTitleStyle,
    primarySubTitleStyle,
    secondarySubTitleStyle,
    centerTextStyle,
    centerDivXStyle,
    centerDivYStyle
]
