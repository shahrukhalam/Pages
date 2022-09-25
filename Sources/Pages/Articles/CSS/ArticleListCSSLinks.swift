//
//  ArticleListCSSLinks.swift
//  
//
//  Created by Shahrukh Alam on 18/09/22.
//

import HTMLDSL

func articleListCSSLinks(root: String) -> some HTMLContentView {
    AnyView([
        CSSLink(favicon: .root + "Images/Index/favicon.png"),
        CSSLink(path: root + "CSS/kickoff.css"),
        CSSLink(path: root + "CSS/nav.css"),
        CSSLink(path: root + "CSS/body.css"),
        CSSLink(path: root + "CSS/common.css"),
        CSSLink(path: root + "CSS/font.css", type: .wide),
        CSSLink(path: root + "CSS/font-small.css", type: .small)
    ])
}
