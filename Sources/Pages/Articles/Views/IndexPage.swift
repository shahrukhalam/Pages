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
            }
            
            Body {
                NavView()
                Div {
                    sectionHeader(detail: .default)
                }
                .margin(uniform: .pixel(20))
                .padding(top: .pixel(50), bottom: .pixel(50))
                .backgroundColor(.DarkArticleBackground)
            }
        }
    }
}

private struct SectionHeaderDetail {
    let title: String
    let subtitle: String
    let image: String
    let alternateText: String
}

private extension SectionHeaderDetail {
    static let `default`: Self = .init(title: "SwiftUI",
                                       subtitle: "Adopt the newest features in the Swift ecosystem to help you build better apps.",
                                       image: "Images/1/swiftUI.png",
                                       alternateText: "Some Image")
}

private func sectionHeader(detail: SectionHeaderDetail) -> some HTMLBodyContentView {
    Div {
        Div {
            Headings(detail.title)
                .identifyBy(cssClasses: [.primaryTitle, .centerText])
            Headings(detail.subtitle)
                .identifyBy(cssClasses: [.secondarySubTitle, .centerText])
        }

        Div {
            Div {
                Headings(detail.title)
                    .identifyBy(cssClasses: [.secondarySmallTitle])
                Headings(detail.subtitle)
                    .identifyBy(cssClasses: [.tertiarySubTitle])
                Link(text: "Read", url: "")
                    .identifyBy(cssClass: .link)
            }
            .position(.absolute, left: .percentage(60), top: .percentage(40), right: .percentage(10))

            Image(detail.image, alternateText: detail.alternateText)
                .size(width: .percentage(100))
        }
        .padding(top: .pixel(30))
        .position(.relative)
        .identifyBy(cssClass: .sectionHeaderHero)
    }
    .identifyBy(cssClass: .sectionHeader)
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
