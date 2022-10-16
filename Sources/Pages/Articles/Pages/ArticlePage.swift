//
//  ArticlePage.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

public func articlePage(article: Article, meta: MetaDetail) -> some View {
    Document {
        HTML {
            Head {
                commonMeta(meta)
                commonCSSLinks
                commonCSS
                articlePageCSS
                AnalyticsScript()
            }
            
            Body {
                NavView(index: 1)
                ArticleView(article)
                Script(url: highlightScriptURL)
                Script(url: jquery)
                Script(command: highlightScriptCommand)
            }
        }
    }
}

private let highlightScriptURL = "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/highlight.min.js"
private let jquery = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"
private let highlightScriptCommand = """

/* Remove Whitespaces on left */
$("pre code").each(function(){
    var html = $(this).html();
    var pattern = html.match(/\\s*\\n[\\t\\s]*/);
    $(this).html(html.replace(new RegExp(pattern, "g"),'\\n'));
});

hljs.highlightAll();

"""
