import HTMLDSL

public var view404 : some View {
    Document {
        HTML {
            Head {
                commonCSS
            }
            
            Body {
                NavView(index: 0)
                
                Div {
                    Headings("Bad Request")
                        .identifyBy(cssClasses: [.headline, .centerText])
                }
                .backgroundColor(.DarkArticleBackground)
            }
        }
    }
}
