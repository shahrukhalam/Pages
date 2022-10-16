public struct MetaDetail {
    public let title: String
    let description: String
    let keywords: [String]
    let socialImage: String
    public let url: String

    public init(title: String, description: String, keywords: [String], socialImage: String, url: String) {
        self.title = title
        self.description = description
        self.keywords = keywords
        self.socialImage = socialImage
        self.url = url
    }
}
