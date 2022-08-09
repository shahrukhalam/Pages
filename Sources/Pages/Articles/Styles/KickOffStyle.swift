//
//  KickOffStyle.swift
//  
//
//  Created by Shahrukh Alam on 08/08/22.
//

import HTMLDSL

struct KickOffStyle: CSSStyle {
    let key: CustomStringConvertible = Tag.empty.description
    let styles = [Style]()

    var element: String

    init() {
        let pageStyle = PageStyle()
            .margin()
            .padding()
        self.element = pageStyle.element
    }
}
