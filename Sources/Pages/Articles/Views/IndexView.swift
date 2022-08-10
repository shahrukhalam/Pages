//
//  IndexView.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL
import PathKit

public func indexView(article: Article) -> some View {
    Document {
        HTML {
            Head {
                Title("Server Side Swift Article Tutorial, max 50-60 character, go for long descriptive title")
                Meta([.viewport(width: .deviceWidth, scale: .full)])
                CSSLink(path: "CSS/kickoff.css")
                CSSLink(path: "CSS/nav.css")
                CSSLink(path: "CSS/body.css")
                CSSLink(path: "CSS/article.css")
                CSSLink(path: "CSS/markdown.css", type: .wide)
                CSSLink(path: "CSS/markdown-small.css", type: .small)
                CSSLink(path: "CSS/source.css")
            }
            
            Body {
                NavView()
                ArticleView(article)
                Script(url: highlightScriptURL)
                Script(command: highlightScriptCommand)
            }
        }
    }
}

private let highlightScriptURL = "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/highlight.min.js"
private let highlightScriptCommand = "hljs.highlightAll();"
