//
//  SectionHeader.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

struct SectionHeader {
    let description: Description
    let hero: Detail
    let grids: [(Detail, isHiddenInDesktop: Bool)]
}

extension SectionHeader {
    static let mock: Self = .init(description: .iOSDevelopment,
                                  hero: .swiftUI,
                                  grids: [(.swiftUI, true), (.swift, false), (.frameworks, false)])
}
