import HTMLDSL

var commonCSSLinks: some HTMLContentView {
    AnyView([
        CSSLink(favicon: "images/index/favicon.png"),
        CSSLink(path: "CSS/source.css")
    ])
}
