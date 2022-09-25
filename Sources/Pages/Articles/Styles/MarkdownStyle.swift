//
//  MarkdownStyle.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

public struct MarkdownStyle: CSSStyle {
    public let key: CustomStringConvertible
    public let styles = [Style]()
    
    public var element: String
    
    public init(type: CSSLink.DeviceType) {
        self.key = Tag.empty.description
        let containerStyle = ClassStyle(forClass: .markdown)
            .size(width: type == .wide ? .percentage(60) : .percentage(90))
            .margin(left: .auto, right: .auto)
        let allStyles = Self.commonStyles + [containerStyle]
        self.element = allStyles.map { $0.element }.joined(separator: "\n")
    }

    init(mediaType: MediaStyle.DeviceType) {
        self.key = Tag.empty.description
        let containerStyle = ClassStyle(forClass: .markdown)
            .size(width: mediaType == .wide ? .percentage(60) : .percentage(90))
            .margin(left: .auto, right: .auto)
        let allStyles: [CSSStyle] = Self.commonStyles + [MediaStyle(for: mediaType, with: containerStyle)]
        self.element = allStyles.map { $0.element }.joined(separator: "\n")
    }

    static var commonStyles: [ClassStyle] {
        let h1Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h1)))
            .padding(top: .pixel(20), bottom: .pixel(20))
            .font(size: .percentage(300))
            .align(.center)
        let h2Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h2)))
            .padding(top: .pixel(20), bottom: .pixel(10))
            .font(size: .percentage(250))
        let h3Style = ClassStyle(forClass: .markdown, withTag: .enclosing(.headings(.h3)))
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .percentage(200))
        let pStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.paragraph))
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .percentage(125))
            .lineHeight(.percentage(160))
        let introStyle = ClassStyle(forClass: .markdown, withClass: .intro)
            .padding(top: .pixel(10), bottom: .pixel(10))
            .font(size: .percentage(125))
            .lineHeight(.percentage(160))
            .foregroundColor(.DarkActiveNavBarItem)
        let imageCreditsStyle = ClassStyle(forClass: .markdown, withClass: .imageCredits)
            .margin(top: .pixel(-20), bottom: .pixel(10))
            .font(size: .percentage(100))
            .foregroundColor(.DarkActiveNavBarItem)
        let liStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.list))
            .padding(bottom: .pixel(5))
            .font(size: .percentage(125))
            .lineHeight(.percentage(160))
            .listImage(url: .rootFromArticles + "Images/Articles/spinning-top.tiff")
        let blockquoteStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.blockquote))
            .margin(uniform: .pixel(20))
            .padding(left: .pixel(20))
            .border(width: .pixel(2))
            .borderLeft()
            .border(color: .DarkNavBarDividerColor)
        let linkStyle = ClassStyle(forClass: .markdown, withTag: .enclosing(.link))
            .foregroundColor(.DarkHoverNavBarItem)
            .textDecoration(.none)
        let linkHoverStyle = ClassStyle(.markdown, tag: .enclosing(.link), cssTag: .hover)
            .textDecoration(.underline)
        let commonStyles = [h1Style, h2Style, h3Style, pStyle, introStyle, imageCreditsStyle, liStyle, blockquoteStyle, linkStyle, linkHoverStyle]
        return commonStyles
    }
}
