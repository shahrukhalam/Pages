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
                Meta([.characterSet(.utf8),
                      .name(.author, content: "Shahrukh Alam")])
                CSSLink(path: "CSS/kickoff.css")
                CSSLink(path: "CSS/nav.css")
                CSSLink(path: "CSS/body.css")
                CSSLink(path: "CSS/article.css")
                CSSLink(path: "CSS/markdown.css")
            }
            
            Body {
                NavView()
                
                ArticleView(article)
            }
        }
    }
}
