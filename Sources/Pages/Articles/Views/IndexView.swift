//
//  IndexView.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL
import PathKit

let contentPath: Path = Path.current + "Sources/Pages/Articles/Contents"
private let markdownPath: Path = contentPath + "1/1.md"
private let markdown: String = try! markdownPath.read()
private let content: ArticleContent = .init(types: [.markdown(content: markdown)])
private let article: Article = .init(content: content)

public let indexView = Document {
    HTML {
        Head {
            Title("Server Side Swift Article Tutorial, max 50-60 character, go for long descriptive title")
            Meta([.characterSet(.utf8),
                  .name(.author, content: "Shahrukh Alam")])
            CSSLink(path: "../CSS/kickoff.css")
            CSSLink(path: "../CSS/nav.css")
            CSSLink(path: "../CSS/body.css")
            CSSLink(path: "../CSS/article.css")
            CSSLink(path: "../CSS/markdown.css")
        }
        
        Body {
            Div {
                Link(text: "Home", url: "index.html")
                    .identifyBy(cssClass: .activeLink)
                Link(text: "About", url: "about.html")
                    .identifyBy(cssClass: .inactiveLink)
            }
            .identifyBy(cssClass: .indexNav)
            
            ArticleView(article)
        }
    }
}
