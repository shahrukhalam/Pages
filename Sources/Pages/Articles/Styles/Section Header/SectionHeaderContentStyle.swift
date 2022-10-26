//
//  SectionHeaderContentStyle.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

private let sectionHeaderContentOwnStyle = ClassStyle(forClass: .sectionHeaderContent)
    .size(width: .percentage(70))
    .margin(left: .auto, right: .auto)
    .padding(top: .pixel(65), bottom: .pixel(75))
private let sectionHeaderContentLinkStyle = ClassStyle(.sectionHeaderHero, cssTag: .hover, tag: .enclosing(.link))
    .textDecoration(.underline)
public let sectionHeaderContentStyle: [CSSStyle] = [
    sectionHeaderContentOwnStyle,
    sectionHeaderContentLinkStyle
]

private let sectionHeaderContentSmallOwnStyle = ClassStyle(forClass: .sectionHeaderContent)
    .boxSize(.borderBox)
    .size(width: .percentage(100))
    .padding(left: .pixel(20), top: .pixel(65), right: .pixel(20), bottom: .pixel(75))
public let sectionHeaderContentSmallStyle: [CSSStyle] = [
    sectionHeaderContentSmallOwnStyle,
    sectionHeaderContentLinkStyle
]
