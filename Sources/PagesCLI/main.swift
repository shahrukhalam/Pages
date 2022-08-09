//
//  main.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import Pages
import PathKit

try kickStart()

private func kickStart() throws {
    try generateCSS()
    try generateHTML()
}

private func generateCSS() throws {
    let kickoffCSSPath = cssPath + Path("kickoff.css")
    try kickoffCSSPath.write(kickOffStyle)
    
    let navCSSPath = cssPath + Path("nav.css")
    try navCSSPath.write(navStyle)

    let bodyCSSPath = cssPath + Path("body.css")
    try bodyCSSPath.write(bodyStyle)
    
    let articleCSSPath = cssPath + Path("article.css")
    try articleCSSPath.write(articleStyle)
    
    let markdownCSSPath = cssPath + Path("markdown.css")
    try markdownCSSPath.write(markdownStyle)
}

private func generateHTML() throws {
    let indexHTMLPath = indexHTMLFolder + Path("index.html")
    let indexHTML = indexView(article: article).element
    try indexHTMLPath.write(indexHTML)
}

private var docsFolder: Path { Path.current + "docs" }
private var cssPath: Path { docsFolder + Path("CSS") }
private var indexHTMLFolder: Path { docsFolder }
private var htmlPath: Path { docsFolder + Path("HTML") }

private var kickOffStyle: String { KickOffStyle().element }
private var navStyle: String { NavStyle().element }
private var bodyStyle: String { DarkIndexBodyStyle().element }
private var articleStyle: String { ArticleStyle().element }
private var markdownStyle: String { MarkdownStyle().element }

private var contentPath: Path { Path.current + "Sources/Pages/Articles/Contents" }
private var markdownPath: Path { contentPath + "1/1.md" }
private var markdown: String { try! markdownPath.read() }
private var content: ArticleContent { .init(types: [.markdown(content: markdown)]) }
private var article: Article { .init(content: content) }
