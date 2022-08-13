//
//  FontStyles + Small.swift
//  
//
//  Created by Shahrukh Alam on 11/08/22.
//

import HTMLDSL

// 1.5 times less than desktop sizes

private let primaryLargeTitleStyle = ClassStyle(forClass: .primaryLargeTitle)
    .padding(top: .pixel(20), bottom: .pixel(20))
    .font(size: .percentage(200))

private let secondaryLargeTitleStyle = ClassStyle(forClass: .secondaryLargeTitle)
    .font(size: .percentage(166))

private let tertiaryLargeTitleStyle = ClassStyle(forClass: .tertiaryLargeTitle)
    .font(size: .percentage(133))

private let primaryTitleStyle = ClassStyle(forClass: .primaryTitle)
    .padding(top: .pixel(10), bottom: .pixel(10))
    .font(size: .percentage(166))
    .font(weight: .number(600))

private let secondaryTitleStyle = ClassStyle(forClass: .secondaryTitle)
    .font(size: .percentage(133))
    .font(weight: .number(600))

private let tertiaryTitleStyle = ClassStyle(forClass: .tertiaryTitle)
    .font(size: .percentage(100))
    .font(weight: .number(600))

private let primarySmallTitleStyle = ClassStyle(forClass: .primarySmallTitle)
    .padding(top: .pixel(5), bottom: .pixel(5))
    .font(size: .percentage(100))
    .font(weight: .number(600))

private let secondarySmallTitleStyle = ClassStyle(forClass: .secondarySmallTitle)
    .padding(top: .pixel(5), bottom: .pixel(5))
    .font(size: .percentage(80))
    .font(weight: .number(600))

private let tertiarySmallTitleStyle = ClassStyle(forClass: .tertiarySmallTitle)
    .font(size: .percentage(73))
    .font(weight: .number(600))

private let primaryLargeSubTitleStyle = ClassStyle(forClass: .primaryLargeSubTitle)
    .padding(top: .pixel(10), bottom: .pixel(10))
    .font(size: .percentage(133))
    .font(weight: .number(400))

private let primarySubTitleStyle = ClassStyle(forClass: .primarySubTitle)
    .padding(top: .pixel(5), bottom: .pixel(5))
    .font(size: .percentage(100))
    .font(weight: .number(400))

private let secondarySubTitleStyle = ClassStyle(forClass: .secondarySubTitle)
    .font(size: .percentage(80))
    .font(weight: .number(400))

private let tertiarySubTitleStyle = ClassStyle(forClass: .tertiarySubTitle)
    .padding(top: .pixel(5), bottom: .pixel(5))
    .font(size: .percentage(73))
    .font(weight: .number(400))
    .lineHeight(.percentage(140))

private let primarySmallSubTitleStyle = ClassStyle(forClass: .primarySmallSubTitle)
    .font(size: .percentage(60))
    .font(weight: .number(400))
    .lineHeight(.percentage(140))

public let fontStylesSmall = [
    primaryLargeTitleStyle,
    secondaryLargeTitleStyle,
    tertiaryLargeTitleStyle,
    primaryTitleStyle,
    secondaryTitleStyle,
    tertiaryTitleStyle,
    primarySmallTitleStyle,
    secondarySmallTitleStyle,
    tertiarySmallTitleStyle,
    primaryLargeSubTitleStyle,
    primarySubTitleStyle,
    secondarySubTitleStyle,
    tertiarySubTitleStyle,
    primarySmallSubTitleStyle
]
