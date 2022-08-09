//
//  ArticleContent.swift
//  
//
//  Created by Shahrukh Alam on 08/08/2022.
//

import Foundation

public struct ArticleContent {
    public enum ContentType {
        case markdown(content: String)
        case source(content: String)
    }
    
    let types: [ContentType]
    
    public init(types: [ContentType]) {
        self.types = types
    }
}

public extension ArticleContent {
    static let empty: Self = .init(types: [])
}
