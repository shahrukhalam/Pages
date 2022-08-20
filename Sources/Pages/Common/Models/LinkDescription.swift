//
//  LinkDescription.swift
//  
//
//  Created by Shahrukh Alam on 15/08/22.
//

public struct LinkDescription {
    let url: String
    let text: String
}

extension LinkDescription {
    static let dynamicFramework: Self = .init(url: .dynmaicFrameworksLink, text: "Read")
}

extension String {
    static var empty: Self { "" }
    /// Replace with `empty` in case of local
    static var root: Self = "/Pages/"
    static var cssRootFromArticles: Self = "../../"
    /// Replace with `cssRootFromArticles` in case of local
    static var cssRoot: Self = "/Pages/"
    static var indexLink: Self { root + "index.html" }
    static private var articlesHTMLFolder: Self { root + "HTML/Articles/" }
    static var dynmaicFrameworksLink: Self { .articlesHTMLFolder + "dynamic-framework.html" }
}
