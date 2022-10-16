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
                Markdown(article.markdown)
                share(title: article.title, url: article.url)
            }
            .identifyBy(cssClass: .markdown)
        }
        .identifyBy(cssClass: .article)
    }
}

private func share(title: String, url: String) -> some HTMLBodyContentView {
    AnyView(
        Div {
            Paragraphs("Thanks for reading 🚀" + .lineBreak + "If you liked this article, please share it with your friends and fellow iOS Developers 🙏")
            ImageLink(url: "https://twitter.com/intent/tweet?text=I recommend \(title) by Shahrukh Alam \(url)", content: {
                Image("/images/articles/twitter.png", alternateText: "twitter icon")
                Paragraphs("Share this article on Twitter")
                    .display(.inline)
            })
            .display(.block)
            .target(.newWindowOrTab)
            ImageLink(url: "https://www.linkedin.com/sharing/share-offsite/?url=\(url)", content: {
                Image("/images/articles/linkedin.png", alternateText: "linkedin icon")
                Paragraphs("Share this article on Linkedin")
                    .display(.inline)
            })
            .display(.block)
            .target(.newWindowOrTab)
        }
    )
}
