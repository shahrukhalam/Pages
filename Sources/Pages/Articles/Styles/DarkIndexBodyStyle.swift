//
//  DarkIndexBodyStyle.swift
//  
//
//  Created by Shahrukh Alam on 08/08/22.
//

import HTMLDSL

struct DarkIndexBodyStyle: CSSStyle {
    let key: CustomStringConvertible = Tag.empty.description
    let styles = [Style]()

    var element: String

    init() {
        let bodyStyle = TagStyle(for: .enclosing(.body))
            .padding(top: .pixel(51))
            .backgroundColor(.html(.Black))
            .foregroundColor(.html(.White))
            .font(family: .sansSerif([.SFProDisplay,
                                      .SFProIcons,
                                      .HelveticaNeue,
                                      .Helvetica,
                                      .Arial]))

        self.element = bodyStyle.element
    }
}
