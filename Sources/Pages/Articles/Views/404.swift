import HTMLDSL

private var view404CSS: some HTMLHeadContentView {
    HeadStyle {
        KickOffStyle()
        NavStyle()
        DarkIndexBodyStyle()
        commonStyles
        MediaStyle(for: .wide, with: fontStyles)
        MediaStyle(for: .small, with: fontStylesSmall)
    }
}

public func view404(description: Description) -> some View {
    Document {
        HTML {
            Head {
                view404CSS
            }
            
            Body {
                NavView(index: -1)
                
                Div {
                    Div {
                        Headings(description.title)
                            .identifyBy(cssClasses: [.title2, .centerText])
                            .foregroundColor(.title404)
                        Headings(description.subtitle)
                            .identifyBy(cssClasses: [.subheadline, .centerText])
                            .foregroundColor(.subtitle404)
                            .margin(top: .pixel(16))
                    }
                }
                // `top`: Nav Bar (57) + normal space (20)
                .position(.fixed, left: .pixel(20), top: .pixel(77), right: .pixel(20), bottom: .pixel(20))
                .identifyBy(cssClass: .centerDivContainer)
                .backgroundColor(.DarkArticleBackground)
            }
        }
    }
}
