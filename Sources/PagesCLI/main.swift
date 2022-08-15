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
    
    let commonWideCSSPath = cssPath + Path("common-wide.css")
    try commonWideCSSPath.write(desktopHiddenStyle.element)

    let commonSmallCSSPath = cssPath + Path("common-small.css")
    try commonSmallCSSPath.write(mobileHiddenStyle.element)
    
    let fontCSSPath = cssPath + Path("font.css")
    try fontCSSPath.write(fontStyles.map { $0.element }.joined(separator: "\n"))

    let fontCSSPathSmall = cssPath + Path("font-small.css")
    try fontCSSPathSmall.write(fontStylesSmall.map { $0.element }.joined(separator: "\n"))
    
    let indexSectionHeaderCSSPath = cssPath + Path("index-section-header.css")
    try indexSectionHeaderCSSPath.write(sectionHeaderStyle.element)
    
    let indexSectionHeaderSmallCSSPath = cssPath + Path("index-section-header-small.css")
    try indexSectionHeaderSmallCSSPath.write(sectionHeaderSmallStyle.element)
    
    let indexSectionHeaderContentCSSPath = cssPath + Path("index-section-header-content.css")
    try indexSectionHeaderContentCSSPath.write(sectionHeaderContentStyle)
    
    let indexSectionHeaderContentSmallCSSPath = cssPath + Path("index-section-header-content-small.css")
    try indexSectionHeaderContentSmallCSSPath.write(sectionHeaderContentSmallStyle)
    
    let indexSectionHeaderHeroCSSPath = cssPath + Path("index-section-header-hero-small.css")
    try indexSectionHeaderHeroCSSPath.write(sectionHeaderHeroSmallStyle.element)
    
    let gridCSSPath = cssPath + Path("grid.css")
    try gridCSSPath.write(gridContainerStyle.element)
    
    let gridSmallCSSPath = cssPath + Path("grid-small.css")
    try gridSmallCSSPath.write(gridContainerSmallStyle.element)
}

private func generateHTML() throws {
    let indexHTMLPath = indexHTMLFolder + Path("index.html")
    let indexHTML = indexPage().element
    try indexHTMLPath.write(indexHTML)
    
    let dynamicFrameworkArticlePath = htmlPath + Path("Articles/dynamic-framework.html")
    let dynamicFrameworkArticleHTML = articlePage(article: article).element
    try dynamicFrameworkArticlePath.write(dynamicFrameworkArticleHTML)
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
private var markdownPath: Path { contentPath + "Frameworks/Dynamic.md" }
private var markdown: String { try! markdownPath.read() }
private var article: Article { .init(markdown: markdown) }
