//
//  IndexPage.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

public func indexPage() -> some View {
    Document {
        HTML {
            Head {
                Title("Learn iOS Development")
                commonMeta(description: "Short articles and tutorials on Swift, SwiftUI and iOS Development",
                           keywords: ["Swift", "SwiftUI", "iOS Development"])
                socialMeta(title: "Learn iOS Development",
                           description: "Short articles and tutorials on Swift, SwiftUI and iOS Development",
                           image: .baseURL + .root + ImageDescription.swiftUI.url,
                           url: .baseURL + .indexLink)
                commonCSS
                commonCSSLinks(root: .empty)
                indexCSSLinks
            }
            
            Body {
                NavView(index: 0)
                sectionHeader(with: .mock)
            }
        }
    }
}
