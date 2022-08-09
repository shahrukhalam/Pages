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
    
    let markdownCSSPath = cssPath + Path("markdown.css")
    try markdownCSSPath.write(markdownStyle)
}

private func generateHTML() throws {
    let indexHTMLPath = htmlPath + Path("index.html")
    try indexHTMLPath.write(indexView.element)
}

private var generatedFolder: Path { Path.current + "Generated" }
private var cssPath: Path { generatedFolder + Path("CSS") }
private var htmlPath: Path { generatedFolder + Path("HTML") }

private var kickOffStyle: String { KickOffStyle().element }
private var navStyle: String { NavStyle().element }
private var bodyStyle: String { DarkIndexBodyStyle().element }
private var markdownStyle: String { MarkdownStyle().element }
