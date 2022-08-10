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
    let alernateText: String
}

private extension SectionHeaderDetail {
    static let `default`: Self = .init(title: "SwiftUI",
                                       subtitle: "Adopt the newest features in the Swift ecosystem.",
                                       image: "Images/1/wonder1.jpg",
                                       alernateText: "Some Image")
}

private func sectionHeader(detail: SectionHeaderDetail) -> some HTMLBodyContentView {
    Div {
        Div {
            Headings(detail.title)
                .identifyBy(cssClasses: [.primaryTitle, .centerText])
            Headings(detail.subtitle)
                .identifyBy(cssClasses: [.secondarySubTitle, .centerText])
            Image(detail.image, alternateText: detail.alernateText)
                .size(width: .percentage(100))
                .padding(top: .pixel(30))
        }
    }
    .identifyBy(cssClass: .sectionHeader)
}

public let sectionHeaderStyle = ClassStyle(forClass: .sectionHeader)
    .size(width: .percentage(60))
    .margin(left: .auto, right: .auto)
