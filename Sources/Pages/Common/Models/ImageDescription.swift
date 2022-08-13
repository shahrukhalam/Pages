//
//  ImageDescription.swift
//  
//
//  Created by Shahrukh Alam on 13/08/22.
//

public struct ImageDescription {
    let url: String
    let description: String
}

extension ImageDescription {
    static let swiftUI: Self = .init(
        url: "Images/1/SwiftUI.png",
        description: "Donut on a Truck app on iPad, iPhone and Mac"
    )
}
