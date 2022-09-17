//
//  SectionHeaderContent.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

func sectionHeaderContent(with model: SectionHeader) -> some HTMLBodyContentView {
    Div {
        sectionHeaderDescription(with: model.description)
        sectionHeaderHero(with: model.hero)
        Grid(model: model.grids)
    }
    .identifyBy(cssClass: .sectionHeaderContent)
}
