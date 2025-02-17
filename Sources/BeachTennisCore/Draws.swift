public struct DrawAvailable: Codable, Sendable {
    public let isAvailable: Bool

    public init(isAvailable: Bool) {
        self.isAvailable = isAvailable
    }
}

public struct DrawRound: Codable, Sendable {
    public let description: String
    public let number: Int
    public let matches: [DrawMatch]

    public init(description: String, number: Int, matches: [DrawMatch]) {
        self.description = description
        self.number = number
        self.matches = matches
    }
}

public enum MatchStatus: String, Codable, Sendable {
    case toBePlayed = "TP"
    case playedAndCompleted = "PC"
    case notPlayerd = "NP"
    case playedAndAbandoned = "PA"
    case unknown
}

public enum ResultStatus: String, Codable, Sendable {
    case walkOver = "WO"
    case bye = "BYE"
}

public struct DrawMatch: Codable, Sendable {
    public let matchId: Int
    public let teams: [DrawTeam]
    public let status: MatchStatus
    public let statusDisplay: String?
    public let resultDescription: String?
    public let resultStatus: ResultStatus?

    public init(matchId: Int, teams: [DrawTeam], status: MatchStatus, statusDisplay: String?, resultDescription: String?, resultStatus: ResultStatus?) {
        self.matchId = matchId
        self.teams = teams
        self.status = status
        self.statusDisplay = statusDisplay
        self.resultDescription = resultDescription
        self.resultStatus = resultStatus
    }
}

public enum DrawTeamStatus: String, Codable, Sendable {
    case bye
    case toBePlayed
    case winning
    case losing
    case playedAndAbandoned
    case unknown
}

public struct DrawTeam: Codable, Sendable {
    public let players: [Player?]
    public let scores: [DrawScore]
    public let status: DrawTeamStatus
    public let statusDisplay: String?
    public let seeding: Int?

    public init(players: [Player?], scores: [DrawScore], seeding: Int?, status: DrawTeamStatus, statusDisplay: String?) {
        self.players = players
        self.scores = scores
        self.status = status
        self.seeding = seeding
        self.statusDisplay = statusDisplay
    }
}

public struct DrawScore: Codable, Sendable {
    public let score: Int
    public let losingScore: Int?

    public init(score: Int, losingScore: Int?) {
        self.score = score
        self.losingScore = losingScore
    }
}
