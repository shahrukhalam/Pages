//
//  Grid.swift
//  
//
//  Created by Shahrukh Alam on 17/09/22.
//

import HTMLDSL

struct Grid: HTMLBodyContentView {
    var tag: Tag = .empty
    var attributes: [Attribute] = []
    
    private let model: [(Detail, isHiddenInDesktop: Bool)]
    
    init(model: [(Detail, isHiddenInDesktop: Bool)]) {
        self.model = model
    }
    
    var body: some HTMLBodyContentView {
        let gridViews = model.map { (detail, isHiddenInDesktop) -> AnyView in
            let classes: [CSSClass] = isHiddenInDesktop ? [.gridItem, .desktopHidden] : [.gridItem]
            let gridView = Div {
                Link(text: .empty, url: detail.link.url)
                    .position(.absolute, left: .pixel(0), top: .pixel(0), right: .pixel(0), bottom: .pixel(0))

                Image(detail.image.url, alternateText: detail.image.description)
                    .size(width: .percentage(100))
                    .cornerRadius([.pixel(16), .pixel(16), .pixel(0), .pixel(0)])
                
                Div {
                    Headings(detail.description.title)
                        .identifyBy(cssClass: .headline)
                    Headings(detail.description.subtitle)
                        .identifyBy(cssClass: .subheadline)
                    Link(text: detail.link.text, url: detail.link.url)
                        .identifyBy(cssClass: .link)
                        .display(.inlineBlock)
                        .margin(top: .pixel(16))
                }
                .margin(uniform: .pixel(16))
            }
                .position(.relative)
                .backgroundColor(.html(.Black))
                .cornerRadius(.pixel(16))
                .identifyBy(cssClasses: classes)
            
            return AnyView(gridView)
        }
        
        return Div(AnyView(gridViews))
            .identifyBy(cssClass: .gridContainer)
            .margin(top: .pixel(12))
    }
}
