//
//  IndexPage.swift
//  
//
//  Created by Shahrukh Alam on 10/08/22.
//

import HTMLDSL

public func indexPage() -> some View {
    Document {
        HTML {
            Head {
                Title("Server Side Swift Article Tutorial, max 50-60 character, go for long descriptive title")
                Meta(.characterSet(.utf8))
                Meta(.name(.author, content: "Shahrukh Alam"))
                Meta(.viewport(width: .deviceWidth, scale: .full))
                commonCSSLinks
                CSSLink(path: "CSS/index-section-header.css")
                CSSLink(path: "CSS/index-section-header-hero-small.css", type: .small)
                CSSLink(path: "CSS/grid.css")
            }
            
            Body {
                NavView()
                sectionHeader(with: .mock)
            }
        }
    }
}

private struct SectionHeader {
    let description: Description
    let hero: Detail
    let grids: [Detail]
}

private extension SectionHeader {
    static let mock: Self = .init(description: .swift, hero: .swiftUI, grids: [.swiftUI, .swiftUI])
}

private func sectionHeader(with model: SectionHeader) -> some HTMLBodyContentView {
    Div {
        sectionHeaderContent(with: model)
    }
    .margin(uniform: .pixel(20))
    .padding(top: .pixel(50), bottom: .pixel(50))
    .backgroundColor(.DarkArticleBackground)
}

private func sectionHeaderContent(with model: SectionHeader) -> some HTMLBodyContentView {
    Div {
        sectionHeaderDescription(with: model.description)
        sectionHeaderHero(with: model.hero)
        sectionHeaderGrid(with: model.grids)
    }
    .identifyBy(cssClass: .sectionHeader)
}

private func sectionHeaderDescription(with model: Description) -> some HTMLBodyContentView {
    Div {
        Div {
            Headings(model.title)
                .identifyBy(cssClasses: [.primaryTitle, .centerText])
            Headings(model.subtitle)
                .identifyBy(cssClasses: [.secondarySubTitle, .centerText])
        }
    }
}

private func sectionHeaderHero(with model: Detail) -> some HTMLBodyContentView {
    Div {
        Div {
            Headings(model.description.title)
                .identifyBy(cssClasses: [.secondarySmallTitle])
            Headings(model.description.subtitle)
                .identifyBy(cssClasses: [.tertiarySubTitle])
            Link(text: "Read", url: "https://www.google.com")
                .identifyBy(cssClass: .link)
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

private func sectionHeaderGrid(with model: [Detail]) -> some HTMLBodyContentView {
    Grid(model: model)
}

private let sectionHeaderOwnStyle = ClassStyle(forClass: .sectionHeader)
    .size(width: .percentage(70))
    .margin(left: .auto, right: .auto)
private let sectionHeaderLinkStyle = ClassStyle(.sectionHeaderHero, cssTag: .hover, tag: .enclosing(.link))
    .textDecoration(.underline)
public let sectionHeaderStyle = [sectionHeaderOwnStyle, sectionHeaderLinkStyle]
    .map { $0.element }
    .joined(separator: "\n")

public let sectionHeaderHeroSmallStyle = ClassStyle(forClass: .sectionHeaderHero)
    .display(.none)

private struct Grid: HTMLBodyContentView {
    var tag: Tag = .empty
    var attributes: [Attribute] = []
    
    private let model: [Detail]
    
    init(model: [Detail]) {
        self.model = model
    }
    
    var body: some HTMLBodyContentView {
        let gridViews = model.map { detail -> AnyView in
            let gridView = Div {
                Image(detail.image.url, alternateText: detail.image.description)
                    .size(width: .percentage(100))
                    .cornerRadius([.pixel(16), .pixel(16), .pixel(0), .pixel(0)])
                
                Div {
                    Headings(detail.description.title)
                        .identifyBy(cssClass: .tertiarySmallTitle)
                    Headings(detail.description.subtitle)
                        .identifyBy(cssClass: .primarySmallSubTitle)
                    Link(text: "Read", url: "https://www.google.com")
                        .identifyBy(cssClass: .link)
                        .display(.inlineBlock)
                        .margin(top: .pixel(32))
                }
                .margin(uniform: .pixel(16))
            }
                .backgroundColor(.html(.Black))
                .cornerRadius(.pixel(16))
            
            return AnyView(gridView)
        }
        
        return Div(AnyView(gridViews))
            .identifyBy(cssClass: .gridContainer)
            .margin(top: .pixel(12))
    }
}

public let gridContainerOwnStyle = ClassStyle(forClass: .gridContainer)
    .display(.grid)
    .gridNumberOfColumnsWithWidth([.auto, .auto])
    .gridColumn(gap: 12)
private let gridContainerLinkStyle = ClassStyle(.gridContainer, cssTag: .hover, tag: .enclosing(.link))
    .textDecoration(.underline)
public let gridContainerStyle = [gridContainerOwnStyle, gridContainerLinkStyle]
    .map { $0.element }
    .joined(separator: "\n")
