import Foundation

public struct Player: Codable, Hashable, Sendable {
    public let playerId: Int
    public let nationality: String
    public let givenName: String
    public let familyName: String
    public let hiddenPlayer: Bool
    public let ranking: Int?
    public let rankingDisplay: String
    public let profileImageUrl: String
    public let countryFlagUrl: String
    public var fullName: String
    public let shortName: String
    public let points: Int
    public let rankingMovement: Int
    public let rankingMovementDisplay: String
    public let countryCodeAlpha3: String
    public let countryCodeAlpha2: String
    public let age: Int?
    public let details: PlayerDetails?
    public let calendarYearWinsLosses: WinsLosses?
    public let profileURL: String

    public init(playerId: Int, nationality: String, givenName: String, familyName: String, hiddenPlayer: Bool, ranking: Int?, rankingDisplay: String, profileImageUrl: String, countryFlagUrl: String, fullName: String, shortName: String, points: Int, rankingMovement: Int, rankingMovementDisplay: String, countryCodeAlpha3: String, countryCodeAlpha2: String, age: Int?, details: PlayerDetails?, calendarYearWinsLosses: WinsLosses?, profileURL: String) {

        self.playerId = playerId
        self.nationality = nationality
        self.givenName = givenName
        self.familyName = familyName
        self.hiddenPlayer = hiddenPlayer
        self.ranking = ranking
        self.rankingDisplay = rankingDisplay
        self.profileImageUrl = profileImageUrl
        self.countryFlagUrl = countryFlagUrl
        self.fullName = fullName
        self.shortName = shortName
        self.points = points
        self.rankingMovement = rankingMovement
        self.rankingMovementDisplay = rankingMovementDisplay
        self.countryCodeAlpha3 = countryCodeAlpha3
        self.countryCodeAlpha2 = countryCodeAlpha2
        self.age = age
        self.details = details
        self.calendarYearWinsLosses = calendarYearWinsLosses
        self.profileURL = profileURL
    }
}

extension Player {
    public init() {
        playerId = 0
        nationality = ""
        givenName = ""
        familyName = ""
        hiddenPlayer = false
        ranking = 0
        rankingDisplay = ""
        profileImageUrl = ""
        countryFlagUrl = ""
        fullName = ""
        shortName = ""
        points = 0
        rankingMovement = 0
        rankingMovementDisplay = ""
        countryCodeAlpha3 = ""
        countryCodeAlpha2 = ""
        age = nil
        details = nil
        profileURL = ""
        calendarYearWinsLosses = nil
    }
}

public struct PlayerDetails: Codable, Hashable, Sendable {
    public let highestRanking: Int
    public let highestRankingDate: Date
    public let highestRankingDateDisplay: String
    public let startedYear: Int
    public init(highestRanking: Int, highestRankingDate: Date, highestRankingDateDisplay: String, startedYear: Int) {
        self.highestRanking = highestRanking
        self.highestRankingDate = highestRankingDate
        self.highestRankingDateDisplay = highestRankingDateDisplay
        self.startedYear = startedYear
    }
}

public struct WinsLosses: Codable, Hashable, Sendable {
    public let wins: Int
    public let losses: Int
    public let winRate: Double
    public let winRateDisplay: String
    public init(wins: Int, losses: Int, winRate: Double, winRateDisplay: String) {
        self.wins = wins
        self.losses = losses
        self.winRate = winRate
        self.winRateDisplay = winRateDisplay
    }
}
