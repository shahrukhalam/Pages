//
//  CommonMeta.swift
//  
//
//  Created by Shahrukh Alam on 20/08/22.
//

import HTMLDSL

func commonMeta(description: String, keywords: [String]) -> some HTMLHeadContentView {
    AnyView([
        Meta(.characterSet(.utf8)),
        Meta(.name(.author, content: "Shahrukh Alam")),
        Meta(.name(.description, content: description)),
        Meta(.name(.keywords, content: keywords.joined(separator: ", "))),
        Meta(.viewport(width: .deviceWidth, scale: .full))
    ])
}

func socialMeta(title: String, description: String, image: String, url: String) -> some HTMLHeadContentView {
    AnyView([
        Meta(.property(.type, content: "website")),
        Meta(.twitter(.card, content: "summary_large_image")),
        Meta(.property(.title, content: title)),
        Meta(.twitter(.title, content: title)),
        Meta(.property(.description, content: description)),
        Meta(.twitter(.description, content: description)),
        Meta(.property(.image, content: image)),
        Meta(.twitter(.image, content: image)),
        Meta(.property(.url, content: url)),
        Meta(.twitter(.url, content: url)),
    ])
}
