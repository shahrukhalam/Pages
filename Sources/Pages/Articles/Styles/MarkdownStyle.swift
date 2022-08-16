//
//  MarkdownStyle.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

public struct MarkdownStyle: CSSStyle {
    public let key: CustomStringConvertible = Tag.empty.description
    public let styles = [Style]()
    
    public var element: String
    
    public init(type: CSSLink.DeviceType) {
        let containerStyle = ClassStyle(forClass: .markdown)
            .size(width: type == .wide ? .percentage(60) : .percentage(90))
            .margin(left: .auto, right: .auto)
        let h1Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h1)))
            .padding(top: .pixel(20), bottom: .pixel(20))
            .font(size: .percentage(300))
            .align(.center)
        let h2Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h2)))
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .percentage(250))
        let pStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.paragraph))
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .percentage(125))
            .lineHeight(.percentage(140))
        let blockquoteStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.blockquote))
            .padding(left: .pixel(20))
            .border(width: .pixel(1))
            .borderLeft()
            .border(color: .DarkNavBarDividerColor)
        let allStyles = [containerStyle, h1Style, h2Style, pStyle, blockquoteStyle].map { $0.element }
        self.element = allStyles
            .joined(separator: "\n")
    }
}
