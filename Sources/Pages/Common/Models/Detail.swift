//
//  Detail.swift
//  
//
//  Created by Shahrukh Alam on 13/08/22.
//

public struct Detail {
    let description: Description
    let image: ImageDescription
    let link: LinkDescription
}

extension Detail {
    static let swift: Self = .init(description: .swift, image: .swift, link: .dynamicFramework)
    static let swiftUI: Self = .init(description: .swiftUI, image: .swiftUI, link: .dynamicFramework)
    static let frameworks: Self = .init(description: .frameworks, image: .frameworks, link: .dynamicFramework)
}
