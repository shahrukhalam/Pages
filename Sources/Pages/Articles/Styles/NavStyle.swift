//
//  NavStyle.swift
//  
//
//  Created by Shahrukh Alam on 08/08/22.
//

import HTMLDSL

public struct NavStyle: CSSStyle {
    public let key: CustomStringConvertible = Tag.empty.description
    public let styles = [Style]()
    
    public var element: String
    
    public init() {
        let navStyle = ClassStyle(forClass: .indexNav)
            .position(.fixed)
            .constraint(left: .pixel(0), top: .pixel(0), right: .pixel(0))
            .backgroundColor(Color.DarkNavBarColor)
            .align(.center)
            .filter(saturationInPercentage: 180, blurInPixel: 20)
            .zIndex(1)
        
        let linkStyle = ClassStyle(forClass: .indexNav, withTag: .enclosing(.link))
            .padding(uniform: .pixel(16))
            .display(.inlineBlock)
            .textDecoration(.none)
            .font(size: .percentage(125))
        
        let activeLinkStyle = ClassStyle(forClass: .activeLink)
            .foregroundColor(Color.DarkActiveNavBarItem)
            .pointer(.none)
        
        let inactiveLinkStyle = ClassStyle(forClass: .inactiveLink)
            .foregroundColor(.html(.White))
        
        let hoverLinkStyle = TagStyle(for: .enclosing(.link), with: .hover)
            .foregroundColor(Color.DarkHoverNavBarItem)
        
        let classStyles = [navStyle, linkStyle, activeLinkStyle, inactiveLinkStyle]
            .map { $0.element }
        let tagStyles = [hoverLinkStyle].map { $0.element }
        let allStyles = classStyles + tagStyles
        self.element = allStyles
            .joined(separator: "\n")
    }
}
