public struct Detail {
    let description: Description
    let image: ImageDescription
    let link: LinkDescription

    public init(description: Description, image: ImageDescription, link: LinkDescription) {
        self.description = description
        self.image = image
        self.link = link
    }
}
