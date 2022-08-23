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
    static let dynamicFramework: Self = .init(url: .dynamicFrameworksLink, text: "Read")
}

public extension String {
    static var empty: Self { "" }
    /// Replace with `empty` in case of local
    static var root: Self = "/Pages/"
    static private var localRootFromArticles: Self { "../../" }
    /// Use `.localRootFromArticles` in case of local
    static var rootFromArticles: Self = "/Pages/"
    static var indexLink: Self { root + "index" }
    static private var articlesHTMLFolder: Self { root + "HTML/Articles/" }
    static var dynamicFrameworksLink: Self { .articlesHTMLFolder + "dynamic-framework" }
    static var baseURL: Self = "https://shahrukhalam.github.io"
}
