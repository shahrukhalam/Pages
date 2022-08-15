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
    static let swift: Self = .init(
        url: "Images/Index/swift.png",
        description: "Swift bird cruising over air"
    )
    
    static let swiftUI: Self = .init(
        url: "Images/Index/swiftUI.png",
        description: "Donut on a Truck app on iPad, iPhone and Mac"
    )
    
    static let frameworks: Self = .init(
        url: "Images/Index/xcframework.png",
        description: "Wonder Woman blocking lightning with sword"
    )
}
