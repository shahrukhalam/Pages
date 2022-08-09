//
//  MarkdownStyle.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

struct MarkdownStyle: CSSStyle {
    let key: CustomStringConvertible = Tag.empty.description
    let styles = [Style]()
    
    var element: String
    
    init() {
        let containerStyle = ClassStyle(forClass: .markdown)
            .size(width: .percentage(60))
            .margin(left: .auto, right: .auto)
        let h1Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h1)))
            .padding(top: .pixel(20), bottom: .pixel(20))
            .font(size: .pixel(48))
        let h2Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h2)))
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .pixel(40))
        let pStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.paragraph))
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .pixel(20))
            .lineHeight(28)
        let allStyles = [containerStyle, h1Style, h2Style, pStyle].map { $0.element }
        self.element = allStyles
            .joined(separator: "\n")
    }
}
