//
//  ArticlePage.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

public func articlePage(article: Article) -> some View {
    Document {
        HTML {
            Head {
                Title("Dynamic Library in iOS")
                Meta(.characterSet(.utf8))
                Meta(.name(.author, content: "Shahrukh Alam"))
                Meta(.viewport(width: .deviceWidth, scale: .full))
                commonCSSLinks(root: .cssRootFromArticles)
            }
            
            Body {
                NavView(index: 1)
                ArticleView(article)
                Script(url: highlightScriptURL)
                Script(command: highlightScriptCommand)
            }
        }
    }
}

private let highlightScriptURL = "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/highlight.min.js"
private let highlightScriptCommand = "hljs.highlightAll();"
