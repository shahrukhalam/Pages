//
//  FontStyles.swift
//  
//
//  Created by Shahrukh Alam on 11/08/22.
//

import HTMLDSL

// https://developer.apple.com/design/human-interface-guidelines/foundations/typography/

private let largeTitleStyle = ClassStyle(forClass: .largeTitle)
    .font(size: .pixel(40))
    .font(weight: .number(400))

private let title1Style = ClassStyle(forClass: .title1)
    .font(size: .pixel(32))
    .font(weight: .number(400))

private let title2Style = ClassStyle(forClass: .title2)
    .font(size: .pixel(28))
    .font(weight: .number(500))

private let title3Style = ClassStyle(forClass: .title3)
    .font(size: .pixel(24))
    .font(weight: .number(600))

private let headlineStyle = ClassStyle(forClass: .headline)
    .font(size: .pixel(20))
    .font(weight: .number(700))

private let bodyStyle = ClassStyle(forClass: .body)
    .font(size: .pixel(20))
    .font(weight: .number(400))
    .lineHeight(.percentage(140))

private let calloutStyle = ClassStyle(forClass: .callout)
    .font(size: .pixel(18))
    .font(weight: .number(400))
    .lineHeight(.percentage(140))

private let subheadlineStyle = ClassStyle(forClass: .subheadline)
    .font(size: .pixel(16))
    .font(weight: .number(400))
    .lineHeight(.percentage(140))

public let fontStyles: [CSSStyle] = [
    largeTitleStyle,
    title1Style,
    title2Style,
    title3Style,
    headlineStyle,
    bodyStyle,
    calloutStyle,
    subheadlineStyle
]
