//
//  ArticlePage.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

public func articlePage(article: Article,
                        root: String = .rootFromArticles,
                        isTesting: Bool = false) -> some View {
    Document {
        HTML {
            Head {
                Title("Dynamic Library in iOS")
                commonMeta(description: "Short article on Static vs Dynamic Libraries in iOS",
                           keywords: ["Static Library", "Dynamic Library", "Static Framework", "Dynamic Framework", "Static vs Dynamic Library", "Static vs Dynamic Framework", "Static vs Dynamic Library in iOS", "Static vs Dynamic Framework in iOS"])
                socialMeta(title: "How Jesse Pinkman Cracked Dynamic Library in iOS (Part 1)",
                           description: "Short article on Static vs Dynamic Libraries in iOS",
                           image: .baseURL + .root + "Images/Articles/Frameworks/Dynamic/xcframework.png",
                           url: .baseURL + .dynamicFrameworksLink)
                commonCSSLinks(root: root)
                AnyView(isTesting ? [] : [AnalyticsScript()])
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
