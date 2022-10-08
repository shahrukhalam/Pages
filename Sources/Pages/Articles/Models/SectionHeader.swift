public struct SectionHeader {
    let description: Description
    let hero: Detail
    let grids: [(Detail, isHiddenInDesktop: Bool)]

    public init(description: Description, hero: Detail, grids: [(Detail, isHiddenInDesktop: Bool)]) {
        self.description = description
        self.hero = hero
        self.grids = grids
    }
}
