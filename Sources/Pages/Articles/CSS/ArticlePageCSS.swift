//
//  ArticlePageCSS.swift
//  
//
//  Created by Shahrukh Alam on 25/09/2022.
//

import HTMLDSL

var articlePageCSS: some HTMLHeadContentView {
    HeadStyle {
        ArticleStyle()
        MarkdownStyle(mediaType: .small)
        MarkdownStyle(mediaType: .wide)
    }
}
