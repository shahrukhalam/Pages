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
    /// Test individual pages in local, links & navigations might not work because relative root doesn't work in local
    static var root: Self = "/Pages/"
    
    static private var localRootFromArticles: Self { "../../" }
    /// Replace with `.localRootFromArticles` in case of local
    static var rootFromArticles: Self = "/Pages/"
    
    static private var htmlPostfix: Self { ".html" }

    /// Add `.htmlPostfix` in case of local
    static var indexLink: Self { root + "index" }
    static private var articlesHTMLFolder: Self { root + "articles/" }
    static private var frameworksHTMLFolder: Self { .articlesHTMLFolder + "frameworks/" }
    /// Add `.htmlPostfix` in case of local
    static var articlesListLink: Self { .articlesHTMLFolder + "list" }
    /// Add `.htmlPostfix` in case of local
    static var dynamicFrameworksLink: Self { .frameworksHTMLFolder + "dynamic-framework" }
    
    static var baseURL: Self = "https://shahrukhalam.github.io"
}
