//
//  MediaStyle.swift
//  
//
//  Created by Shahrukh Alam on 25/09/2022.
//

import HTMLDSL

struct MediaStyle: CSSStyle {
    enum DeviceType: String {
        case small = "@media screen and (max-width: 900px)"
        case wide = "@media screen and (min-width: 900px)"
    }

    let key: CustomStringConvertible
    let styles: [Style] = []
    let element: String

    init(for type: DeviceType, with style: CSSStyle) {
        self.key = type.rawValue
        self.element = "\(key) {\n\(style.element)\n}"
    }
}
