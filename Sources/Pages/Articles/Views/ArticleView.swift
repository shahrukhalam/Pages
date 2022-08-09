//
//  ArticleView.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

struct ArticleView: HTMLBodyContentView {
    var tag: Tag = .empty
    var attributes = [Attribute]()
    
    private let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
    
    var body: some View {
        Div {
            Div {
                article.content.types.first!.body
            }
            .identifyBy(cssClass: .markdown)
        }
        .identifyBy(cssClass: .article)
    }
}

extension ArticleContent.ContentType {
    var body: some HTMLBodyContentView {
        switch self {
        case .markdown(let content):
            return Markdown(content)
        default:
            fatalError("No setup yet")
        }
    }
}
