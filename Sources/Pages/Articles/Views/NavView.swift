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
    
    var body: some View {
        Div {
            Link(text: "Home", url: "index.html")
                .identifyBy(cssClass: .activeLink)
            Link(text: "About", url: "about.html")
                .identifyBy(cssClass: .inactiveLink)
        }
        .identifyBy(cssClass: .indexNav)
    }
}
