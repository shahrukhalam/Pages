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
