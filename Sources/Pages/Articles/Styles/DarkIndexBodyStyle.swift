//
//  DarkIndexBodyStyle.swift
//  
//
//  Created by Shahrukh Alam on 08/08/22.
//

import HTMLDSL

public struct DarkIndexBodyStyle: CSSStyle {
    public let key: CustomStringConvertible = Tag.empty.description
    public let styles = [Style]()

    public var element: String

    public init() {
        let bodyStyle = TagStyle(for: .enclosing(.body))
            .padding(top: .pixel(57))
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
