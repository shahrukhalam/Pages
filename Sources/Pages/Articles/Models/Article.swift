//
//  Article.swift
//  
//
//  Created by Shahrukh Alam on 08/08/2022.
//

import Foundation

public struct Article {
    let content: ArticleContent
    
    public init(content: ArticleContent) {
        self.content = content
    }
}

public extension Article {
    static let empty: Self = .init(content: .empty)
}
