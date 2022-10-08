import HTMLDSL

func commonCSSLinks() -> some HTMLContentView {
    AnyView([
        CSSLink(favicon: "Images/Index/favicon.png"),
        CSSLink(path: "CSS/source.css")
    ])
}
