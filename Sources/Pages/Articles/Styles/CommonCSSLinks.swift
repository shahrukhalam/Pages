//
//  CommonCSSLinks.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

func commonCSSLinks(root: String) -> some HTMLContentView {
    AnyView([
        CSSLink(favicon: root + "Images/Index/spinning-top.png"),
        CSSLink(path: root + "CSS/kickoff.css"),
        CSSLink(path: root + "CSS/nav.css"),
        CSSLink(path: root + "CSS/body.css"),
        CSSLink(path: root + "CSS/common.css"),
        CSSLink(path: root + "CSS/font.css", type: .wide),
        CSSLink(path: root + "CSS/font-small.css", type: .small),
        CSSLink(path: root + "CSS/article.css"),
        CSSLink(path: root + "CSS/markdown.css", type: .wide),
        CSSLink(path: root + "CSS/markdown-small.css", type: .small),
        CSSLink(path: root + "CSS/source.css")
    ])
}
