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
    static var indexLink: Self { "/index.html" }
    static private var articlesHTMLFolder: Self { "/HTML/Articles/" }
    static var dynmaicFrameworksLink: Self { .articlesHTMLFolder + "dynamic-framework.html" }
}
