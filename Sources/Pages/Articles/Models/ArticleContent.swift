//
//  ArticleContent.swift
//  
//
//  Created by Shahrukh Alam on 08/08/2022.
//

import Foundation

struct ArticleContent {
    enum ContentType {
        case image(name: String, mode: ContentMode)
        case markdown(content: String)
        case source(content: String)

        enum ContentMode {
            case maxWidth
            case width(percentage: Int)
        }
    }
    
    let types: [ContentType]
}

extension ArticleContent {
    static let empty: Self = .init(types: [])
}
