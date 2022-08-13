//
//  Detail.swift
//  
//
//  Created by Shahrukh Alam on 13/08/22.
//

public struct Detail {
    let description: Description
    let image: ImageDescription
}

extension Detail {
    static let swiftUI: Self = .init(description: .swiftUI, image: .swiftUI)
}
