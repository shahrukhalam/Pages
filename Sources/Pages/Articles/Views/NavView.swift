//
//  NavView.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

struct NavView: HTMLBodyContentView {
    var tag: Tag = .empty
    var attributes = [Attribute]()
    
    private let index: Int
    
    init(index: Int) {
        self.index = index
    }
    
    var body: some View {
        Div {
            Link(text: "Home", url: .indexLink)
                .identifyBy(cssClass: index == 0 ? .activeLink : .inactiveLink)
            Link(text: "Articles", url: .dynmaicFrameworksLink)
                .identifyBy(cssClass: index == 1 ? .activeLink : .inactiveLink)
            Divider()
                .backgroundColor(.DarkNavBarDividerColor)
                .size(height: .pixel(1))
                .borderWidth(.pixel(0))
        }
        .identifyBy(cssClass: .indexNav)
    }
}
