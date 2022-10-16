//
//  CommonMeta.swift
//  
//
//  Created by Shahrukh Alam on 20/08/22.
//

import HTMLDSL

func commonMeta(_ meta: MetaDetail) -> some HTMLHeadContentView {
    AnyView([
        AnyView(Title(meta.title)),
        AnyView(htmlMeta(description: meta.description, keywords: meta.keywords)),
        AnyView(socialMeta(title: meta.title,
                           description: meta.description,
                           image: meta.socialImage,
                           url: meta.url))
    ])
}

private func htmlMeta(description: String, keywords: [String]) -> some HTMLHeadContentView {
    AnyView([
        Meta(.characterSet(.utf8)),
        Meta(.name(.author, content: "Shahrukh Alam")),
        Meta(.name(.description, content: description)),
        Meta(.name(.keywords, content: keywords.joined(separator: ", "))),
        Meta(.viewport(width: .deviceWidth, scale: .full))
    ])
}
