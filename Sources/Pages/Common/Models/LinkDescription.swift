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
    static let swiftUI: Self = .init(
        url: "https://www.google.com",
        text: "Read"
    )
}

extension String {
    static var empty: Self { "" }
}
