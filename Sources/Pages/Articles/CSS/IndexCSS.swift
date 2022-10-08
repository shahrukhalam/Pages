import HTMLDSL

var indexCSS: some HTMLHeadContentView {
    HeadStyle {
        MediaStyle(for: .wide, with: sectionHeaderStyle)
        MediaStyle(for: .small, with: sectionHeaderSmallStyle)

        MediaStyle(for: .wide, with: sectionHeaderContentStyle)
        MediaStyle(for: .small, with: sectionHeaderContentSmallStyle)

        MediaStyle(for: .small, with: sectionHeaderHeroSmallStyle)

        MediaStyle(for: .wide, with: gridContainerStyle)
        MediaStyle(for: .small, with: gridContainerSmallStyle)
    }
}
