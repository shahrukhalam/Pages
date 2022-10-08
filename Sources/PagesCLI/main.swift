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
    try generateHTML()
}

private func generateHTML() throws {
    let indexHTMLPath = indexHTMLFolder + Path("index.html")
    let indexHTML = indexPage().element
    try indexHTMLPath.write(indexHTML)
    
    let dynamicFrameworkArticlePath = frameworksHTMLPath + Path("dynamic-framework.html")
    let dynamicFrameworkArticleHTML = articlePage(article: article).element
    try dynamicFrameworkArticlePath.write(dynamicFrameworkArticleHTML)
}

private var docsFolder: Path { Path.current + "docs" }
private var indexHTMLFolder: Path { docsFolder }
private var articlesHTMLPath: Path { docsFolder + Path("articles") }
private var frameworksHTMLPath: Path { articlesHTMLPath + Path("frameworks") }

private var contentPath: Path { Path.current + "Sources/Pages/Articles/Contents" }
private var markdownPath: Path { contentPath + "Frameworks/Dynamic.md" }
private var markdown: String { try! markdownPath.read() }
private var article: Article { .init(markdown: markdown) }
