//
//  ArticleListPage.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

public func articleListPage(tags: [ArticleTag],
                            root: String = .rootFromArticles,
                            isTesting: Bool = false) -> some View {
    Document {
        HTML {
            Head {
                Title(tags.title)
                commonMeta(description: tags.description, keywords: tags.keywords)
                socialMeta(title: tags.title,
                           description: tags.description,
                           image: .baseURL + .root + ImageDescription.swift.url,
                           url: .baseURL + .articlesListLink)
                articleListCSSLinks(root: root)
                AnyView(isTesting ? [] : [AnalyticsScript()])
            }
            
            Body {
                NavView(index: 1)
            }
        }
    }
}
