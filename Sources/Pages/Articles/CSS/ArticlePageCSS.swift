//
//  ArticlePageCSS.swift
//  
//
//  Created by Shahrukh Alam on 25/09/2022.
//

import HTMLDSL

func articlePageCSS(listImage: String) -> some HTMLHeadContentView {
    HeadStyle {
        ArticleStyle()
        MarkdownStyle(mediaType: .small, listImage: listImage)
        MarkdownStyle(mediaType: .wide, listImage: listImage)
    }
}
