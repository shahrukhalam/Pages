//
//  ArticleContent.swift
//  
//
//  Created by Shahrukh Alam on 08/08/2022.
//

import Foundation

public struct ArticleContent {
    public enum ContentType {
        case image(name: String, mode: ContentMode)
        case markdown(content: String)
        case source(content: String)

        public enum ContentMode {
            case maxWidth
            case width(percentage: Int)
        }
    }
    
    let types: [ContentType]
    
    public init(types: [ContentType]) {
        self.types = types
    }
}

public extension ArticleContent {
    static let empty: Self = .init(types: [])
}
