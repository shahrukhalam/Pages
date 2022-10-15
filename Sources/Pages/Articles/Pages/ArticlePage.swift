//
//  ArticlePage.swift
//  
//
//  Created by Shahrukh Alam on 09/08/22.
//

import HTMLDSL

public func articlePage(article: Article,
                        isTesting: Bool = false) -> some View {
    Document {
        HTML {
            Head {
                Title("Dynamic Library in iOS")
                commonMeta(description: "Short article on Static vs Dynamic Libraries in iOS",
                           keywords: ["Static Library", "Dynamic Library", "Static Framework", "Dynamic Framework", "Static vs Dynamic Library", "Static vs Dynamic Framework", "Static vs Dynamic Library in iOS", "Static vs Dynamic Framework in iOS"])
                socialMeta(title: "How Jesse Pinkman Cracked Dynamic Library in iOS (Part 1)",
                           description: "Short article on Static vs Dynamic Libraries in iOS",
                           image: "/images/articles/frameworks/001-dynamic/xcframework.png",
                           url: "")
                commonCSS
                articlePageCSS
                commonCSSLinks()
                AnyView(isTesting ? [] : [AnalyticsScript()])
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
