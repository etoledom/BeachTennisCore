public struct AcceptanceLists: Codable {
    public let list: [String: AcceptanceListDescription]

    public init(list: [String : AcceptanceListDescription]) {
        self.list = list
    }
}

public struct AcceptanceListDescription: Codable {
    public let playerTypeDesc: String
    public let isJuniorRegional: Bool
    public let entryLists: [EntryList]

    public init(playerTypeDesc: String, isJuniorRegional: Bool, entryClassifications: [EntryList]) {
        self.playerTypeDesc = playerTypeDesc
        self.isJuniorRegional = isJuniorRegional
        self.entryLists = entryClassifications
    }
}

public struct EntryList: Codable {
    public let entryClassification: String?
    public let entries: [TeamEntry]

    public init(entryClassification: String?, entries: [TeamEntry]) {
        self.entryClassification = entryClassification
        self.entries = entries
    }
}

public struct TeamEntry: Codable {
    public let positionDisplay: String?
    public let players: [Player]
    public let isAvailableSlot: Bool
    public let combinedPoints: Float?
    public let combinedRankings: Int

    public init(positionDisplay: String?, players: [Player], isAvailableSlot: Bool, combinedPoints: Float?, combinedRankings: Int) {
        self.positionDisplay = positionDisplay
        self.players = players
        self.isAvailableSlot = isAvailableSlot
        self.combinedPoints = combinedPoints
        self.combinedRankings = combinedRankings
    }
}
