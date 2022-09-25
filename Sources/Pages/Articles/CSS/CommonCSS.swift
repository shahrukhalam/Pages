//
//  CommonCSS.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

func commonCSSLinks(root: String) -> some HTMLContentView {
    AnyView([
        CSSLink(favicon: .baseURL + .root + "Images/Index/favicon.png"),
        CSSLink(path: root + "CSS/source.css")
    ])
}

var commonCSS: some HTMLHeadContentView {
    HeadStyle {
        KickOffStyle()
        NavStyle()
        DarkIndexBodyStyle()
        commonStyles
        MediaStyle(for: .wide, with: fontStyles)
        MediaStyle(for: .small, with: fontStylesSmall)
    }
}
