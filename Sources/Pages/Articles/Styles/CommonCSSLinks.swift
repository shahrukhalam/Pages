//
//  CommonCSSLinks.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

var commonCSSLinks: some HTMLContentView {
    AnyView([
        CSSLink(path: "/docs/CSS/kickoff.css"),
        CSSLink(path: "/docs/CSS/nav.css"),
        CSSLink(path: "/CSS/body.css"),
        CSSLink(path: "/CSS/common.css"),
        CSSLink(path: "/CSS/font.css", type: .wide),
        CSSLink(path: "/CSS/font-small.css", type: .small),
        CSSLink(path: "/CSS/article.css"),
        CSSLink(path: "/CSS/markdown.css", type: .wide),
        CSSLink(path: "/CSS/markdown-small.css", type: .small),
        CSSLink(path: "/CSS/source.css")
    ])
}
