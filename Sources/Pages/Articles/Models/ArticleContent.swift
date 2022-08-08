//
//  ArticleContent.swift
//  
//
//  Created by Shahrukh Alam on 08/08/2022.
//

import Foundation

struct ArticleContent {
    enum ContentType {
        case image(path: String, mode: ContentMode)
        case markdown(path: String)
        case source(path: String)

        enum ContentMode {
            case maxWidth
            case width(percentage: Int)
        }
    }
}
