//
//  CommonCSS.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

var commonCSS: some HTMLHeadContentView {
    HeadStyle {
        KickOffStyle()
        NavStyle()
        DarkIndexBodyStyle()
        commonStyles
        MediaStyle(for: .wide, with: fontStyles)
        MediaStyle(for: .small, with: fontStylesSmall)
    }
}
