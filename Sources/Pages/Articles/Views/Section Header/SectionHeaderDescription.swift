//
//  SectionHeaderDescription.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

func sectionHeaderDescription(with model: Description) -> some HTMLBodyContentView {
    Div {
        Div {
            Headings(model.title)
                .identifyBy(cssClasses: [.largeTitle, .centerText])
            Headings(model.subtitle)
                .identifyBy(cssClasses: [.body, .centerText])
        }
    }
}
