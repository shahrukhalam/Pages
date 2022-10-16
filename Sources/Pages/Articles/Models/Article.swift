//
//  Article.swift
//  
//
//  Created by Shahrukh Alam on 08/08/2022.
//

import Foundation

public struct Article {
    let markdown: String
    let title: String
    let url: String
    
    public init(markdown: String, title: String, url: String) {
        self.markdown = markdown
        self.title = title
        self.url = url
    }
}
