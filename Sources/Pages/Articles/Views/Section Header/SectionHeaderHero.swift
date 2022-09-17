//
//  SectionHeaderHero.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

func sectionHeaderHero(with model: Detail) -> some HTMLBodyContentView {
    Div {
        Link(text: .empty, url: model.link.url)
            .position(.absolute, left: .pixel(0), top: .pixel(0), right: .pixel(0), bottom: .pixel(0))
        
        Div {
            Headings(model.description.title)
                .identifyBy(cssClass: .title3)
            Headings(model.description.subtitle)
                .identifyBy(cssClass: .callout)
            Link(text: model.link.text, url: model.link.url)
                .identifyBy(cssClass: .link)
                .display(.inlineBlock)
                .margin(top: .pixel(11))
        }
        .position(.absolute, left: .percentage(60), top: .percentage(40), right: .percentage(10))
        
        Image(model.image.url, alternateText: model.image.description)
            .size(width: .percentage(100))
            .cornerRadius(.pixel(16))
    }
    .padding(top: .pixel(30))
    .position(.relative)
    .identifyBy(cssClass: .sectionHeaderHero)
}
