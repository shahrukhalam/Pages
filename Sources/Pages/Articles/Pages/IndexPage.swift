import HTMLDSL

public func indexPage(header: SectionHeader) -> some View {
    Document {
        HTML {
            Head {
                Title("Learn iOS Development")
                commonMeta(description: "Short articles and tutorials on Swift, SwiftUI and iOS Development",
                           keywords: ["Swift", "SwiftUI", "iOS Development"])
//                socialMeta(title: "Learn iOS Development",
//                           description: "Short articles and tutorials on Swift, SwiftUI and iOS Development",
//                           image: ImageDescription.swiftUI.url,
//                           url: "")
                commonCSS
//                commonCSSLinks(root: .empty)
//                indexCSSLinks
                indexCSS
            }
            
            Body {
                NavView(index: 0)
                sectionHeader(with: header)
            }
        }
    }
}
