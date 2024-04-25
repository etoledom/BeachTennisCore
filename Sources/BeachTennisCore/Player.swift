import Foundation

public struct Player: Codable, Hashable {
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
    public let age: Int?
    public let details: PlayerDetails?
    public let profileURL: String

    public init(playerId: Int, nationality: String, givenName: String, familyName: String, hiddenPlayer: Bool, ranking: Int?, profileImageUrl: String, countryFlagUrl: String, points: Int, rankingMovement: Int, countryCodeAlpha3: String, age: Int?, details: PlayerDetails?, profileURL: String) {
        let givenName = givenName.capitalized
        let familyName = familyName.capitalized
        self.playerId = playerId
        self.nationality = nationality
        self.givenName = givenName
        self.familyName = familyName
        self.hiddenPlayer = hiddenPlayer
        self.ranking = ranking
        self.profileImageUrl = profileImageUrl
        self.countryFlagUrl = countryFlagUrl
        self.fullName = "\(givenName) \(familyName)"
        let initial = givenName.first?.uppercased() ?? ""
        let components = familyName.components(separatedBy: " ")
        var finalSurname = ""
        for surnameComponent in components {
            if surnameComponent.count <= 3 {
                finalSurname += "\(surnameComponent.lowercased()) "
            } else {
                finalSurname += "\(surnameComponent.lowercased().capitalized)"
                break
            }
        }

        self.shortName = "\(initial). \(finalSurname)"
        if let ranking {
            self.rankingDisplay = "\(ranking)"
        } else {
            self.rankingDisplay = "-"
        }

        self.points = points
        self.rankingMovement = rankingMovement
        self.rankingMovementDisplay = {
            if rankingMovement > 0 {
                return "\(rankingMovement)"
            } else if rankingMovement < 0 {
                return "\(-1*rankingMovement)"
            } else {
                return "􀆀"
            }
        }()
        self.countryCodeAlpha3 = countryCodeAlpha3
        self.age = age
        self.details = details
        self.profileURL = profileURL
    }

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
        age = nil
        details = nil
        profileURL = ""
    }
}

public struct PlayerDetails: Codable, Hashable {
    public let highestRanking: Int
    public let highestRankingDate: Date
    public let highestRankingDateDisplay: String
    public init(highestRanking: Int, highestRankingDate: Date, highestRankingDateDisplay: String) {
        self.highestRanking = highestRanking
        self.highestRankingDate = highestRankingDate
        self.highestRankingDateDisplay = highestRankingDateDisplay
    }
}
