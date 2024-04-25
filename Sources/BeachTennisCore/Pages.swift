public struct Page<T: Codable>: Codable {
    public let items: [T]
    public let metadata: PageMetadata

    public init(items: [T], metadata: PageMetadata) {
        self.items = items
        self.metadata = metadata
    }
}

public struct PageMetadata: Codable {
    public let page: Int
    public let per: Int
    public let total: Int

    public init(page: Int, per: Int, total: Int) {
        self.page = page
        self.per = per
        self.total = total
    }
}

extension PageMetadata {
    public var completed: Bool {
        page != 0 && page * per >= total
    }
}
