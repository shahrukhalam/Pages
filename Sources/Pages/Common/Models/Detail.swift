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
    static let swiftUI: Self = .init(description: .swiftUI, image: .swiftUI, link: .swiftUI)
    static let frameworks: Self = .init(description: .frameworks, image: .frameworks, link: .swiftUI)
}
