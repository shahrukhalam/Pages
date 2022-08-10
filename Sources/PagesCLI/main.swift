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
    try kickoffCSSPath.write(kickOffStyleElement)
    
    let navCSSPath = cssPath + Path("nav.css")
    try navCSSPath.write(navStyleElement)

    let bodyCSSPath = cssPath + Path("body.css")
    try bodyCSSPath.write(bodyStyleElement)
    
    let articleCSSPath = cssPath + Path("article.css")
    try articleCSSPath.write(articleStyleElement)
    
    let markdownCSSPath = cssPath + Path("markdown.css")
    try markdownCSSPath.write(markdownStyleElement)
    
    let markdownSmallCSSPath = cssPath + Path("markdown-small.css")
    try markdownSmallCSSPath.write(markdownSmallStyleElement)
    
    let commonCSSPath = cssPath + Path("common.css")
    try commonCSSPath.write(commonStyles.map { $0.element }.joined(separator: "\n"))
    
    let indexSectionHeaderCSSPath = cssPath + Path("index-section-header.css")
    try indexSectionHeaderCSSPath.write(sectionHeaderStyle.element)
}

private func generateHTML() throws {
    let indexHTMLPath = indexHTMLFolder + Path("index.html")
    let indexHTML = indexPage().element
    try indexHTMLPath.write(indexHTML)
}

private var docsFolder: Path { Path.current + "docs" }
private var cssPath: Path { docsFolder + Path("CSS") }
private var indexHTMLFolder: Path { docsFolder }
private var htmlPath: Path { docsFolder + Path("HTML") }

private var kickOffStyleElement: String { KickOffStyle().element }
private var navStyleElement: String { NavStyle().element }
private var bodyStyleElement: String { DarkIndexBodyStyle().element }
private var articleStyleElement: String { ArticleStyle().element }
private var markdownStyleElement: String { MarkdownStyle(type: .wide).element }
private var markdownSmallStyleElement: String { MarkdownStyle(type: .small).element }

private var contentPath: Path { Path.current + "Sources/Pages/Articles/Contents" }
private var markdownPath: Path { contentPath + "1/1.md" }
private var markdown: String { try! markdownPath.read() }
private var article: Article { .init(markdown: markdown) }
