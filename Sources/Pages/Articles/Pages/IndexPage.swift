import HTMLDSL

public func indexPage(header: SectionHeader, meta: MetaDetail) -> some View {
    Document {
        HTML {
            Head {
                commonMeta(meta)
                commonCSSLinks
                commonCSS
                indexCSS
            }
            
            Body {
                NavView(index: 0)
                sectionHeader(with: header)
            }
        }
    }
}
