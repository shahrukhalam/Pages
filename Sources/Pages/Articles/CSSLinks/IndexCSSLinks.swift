//
//  IndexCSSLinks.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

var indexCSSLinks: some HTMLContentView {
    AnyView([
        CSSLink(path: .root + "CSS/index-section-header.css", type: .wide),
        CSSLink(path: .root + "CSS/index-section-header-small.css", type: .small),
        CSSLink(path: .root + "CSS/index-section-header-content.css", type: .wide),
        CSSLink(path: .root + "CSS/index-section-header-content-small.css", type: .small),
        CSSLink(path: .root + "CSS/index-section-header-hero-small.css", type: .small),
        CSSLink(path: .root + "CSS/grid.css", type: .wide),
        CSSLink(path: .root + "CSS/grid-small.css", type: .small),
        CSSLink(path: .root + "CSS/common-wide.css", type: .wide),
        CSSLink(path: .root + "CSS/common-small.css", type: .small)
    ])
}
