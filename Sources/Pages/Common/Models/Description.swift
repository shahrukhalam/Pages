//
//  Description.swift
//  
//
//  Created by Shahrukh Alam on 13/08/22.
//

public struct Description {
    let title: String
    let subtitle: String
}

extension Description {
    static let swift: Self = .init(
        title: "Swift",
        subtitle: "Adopt the newest features in the Swift ecosystem to help you build better apps."
    )
    
    static let swiftUI: Self = .init(
        title: "SwiftUI",
        subtitle: "Build Apps with shared code and unique experience for iPad, iPhone and Mac."
    )
    
    static let frameworks: Self = .init(
        title: "Frameworks",
        subtitle: "Lear how to build modular reusable code."
    )
}
