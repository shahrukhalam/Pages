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
                Title("Learn iOS Development")
                Meta(.characterSet(.utf8))
                Meta(.name(.author, content: "Shahrukh Alam"))
                Meta(.viewport(width: .deviceWidth, scale: .full))
                commonCSSLinks
                indexCSSLinks
            }
            
            Body {
                NavView(index: 0)
                sectionHeader(with: .mock)
            }
        }
    }
}

private var indexCSSLinks: some HTMLContentView {
    AnyView([
        CSSLink(path: .root + "/CSS/index-section-header.css", type: .wide),
        CSSLink(path: .root + "/CSS/index-section-header-small.css", type: .small),
        CSSLink(path: .root + "/CSS/index-section-header-content.css", type: .wide),
        CSSLink(path: .root + "/CSS/index-section-header-content-small.css", type: .small),
        CSSLink(path: .root + "/CSS/index-section-header-hero-small.css", type: .small),
        CSSLink(path: .root + "/CSS/grid.css", type: .wide),
        CSSLink(path: .root + "/CSS/grid-small.css", type: .small),
        CSSLink(path: .root + "/CSS/common-wide.css", type: .wide),
        CSSLink(path: .root + "/CSS/common-small.css", type: .small)
    ])
}

private struct SectionHeader {
    let description: Description
    let hero: Detail
    let grids: [(Detail, isHiddenInDesktop: Bool)]
}

private extension SectionHeader {
    static let mock: Self = .init(description: .iOSDevelopment, hero: .swiftUI, grids: [(.swiftUI, true), (.swift, false), (.frameworks, false)])
}

private func sectionHeader(with model: SectionHeader) -> some HTMLBodyContentView {
    Div {
        sectionHeaderContent(with: model)
    }
    .identifyBy(cssClass: .sectionHeader)
    .backgroundColor(.DarkArticleBackground)
}

public let sectionHeaderStyle = ClassStyle(forClass: .sectionHeader)
    .margin(uniform: .pixel(20))

public let sectionHeaderSmallStyle = ClassStyle(forClass: .sectionHeader)
    .margin(top: .pixel(20), bottom: .pixel(20))

private func sectionHeaderContent(with model: SectionHeader) -> some HTMLBodyContentView {
    Div {
        sectionHeaderDescription(with: model.description)
        sectionHeaderHero(with: model.hero)
        sectionHeaderGrid(with: model.grids)
    }
    .identifyBy(cssClass: .sectionHeaderContent)
}

private func sectionHeaderDescription(with model: Description) -> some HTMLBodyContentView {
    Div {
        Div {
            Headings(model.title)
                .identifyBy(cssClasses: [.largeTitle, .centerText])
            Headings(model.subtitle)
                .identifyBy(cssClasses: [.body, .centerText])
        }
    }
}

private func sectionHeaderHero(with model: Detail) -> some HTMLBodyContentView {
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

private func sectionHeaderGrid(with model: [(Detail, isHiddenInDesktop: Bool)]) -> some HTMLBodyContentView {
    Grid(model: model)
}

private let sectionHeaderContentOwnStyle = ClassStyle(forClass: .sectionHeaderContent)
    .size(width: .percentage(70))
    .margin(left: .auto, right: .auto)
    .padding(top: .pixel(65), bottom: .pixel(75))
private let sectionHeaderContentLinkStyle = ClassStyle(.sectionHeaderHero, cssTag: .hover, tag: .enclosing(.link))
    .textDecoration(.underline)
public let sectionHeaderContentStyle = [sectionHeaderContentOwnStyle, sectionHeaderContentLinkStyle]
    .map { $0.element }
    .joined(separator: "\n")

private let sectionHeaderContentSmallOwnStyle = ClassStyle(forClass: .sectionHeaderContent)
    .boxSize(.borderBox)
    .size(width: .percentage(100))
    .padding(left: .pixel(20), top: .pixel(65), right: .pixel(20), bottom: .pixel(75))
public let sectionHeaderContentSmallStyle = [sectionHeaderContentSmallOwnStyle, sectionHeaderContentLinkStyle]
    .map { $0.element }
    .joined(separator: "\n")

public let sectionHeaderHeroSmallStyle = ClassStyle(forClass: .sectionHeaderHero)
    .display(.none)

private struct Grid: HTMLBodyContentView {
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

private let gridContainerOwnStyle = ClassStyle(forClass: .gridContainer)
    .display(.grid)
    .gridNumberOfColumnsWithWidth([.auto, .auto])
    .gridColumn(gap: 12)
private let gridContainerLinkStyle = ClassStyle(.gridItem, cssTag: .hover, tag: .enclosing(.link))
    .textDecoration(.underline)
public let gridContainerStyle = [gridContainerOwnStyle, gridContainerLinkStyle]
    .map { $0.element }
    .joined(separator: "\n")

private let gridContainerSmallOwnStyle = ClassStyle(forClass: .gridContainer)
    .display(.grid)
    .gridNumberOfColumnsWithWidth([.auto])
    .gridRow(gap: 12)
public let gridContainerSmallStyle = [gridContainerSmallOwnStyle, gridContainerLinkStyle]
    .map { $0.element }
    .joined(separator: "\n")
