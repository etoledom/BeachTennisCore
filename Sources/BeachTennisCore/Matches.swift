import Foundation

public struct MatchesDay: Codable, Hashable {
    public let id: Int
    public let day: Date
    public let dayDisplay: String
    public let tournamentKey: String

    public init(id: Int, day: Date, dayDisplay: String, tournamentKey: String) {
        self.id = id
        self.day = day
        self.dayDisplay = dayDisplay
        self.tournamentKey = tournamentKey
    }
}

public struct Matches: Codable {
    public let day: Date
    public let dayDisplay: String
    public let courts: [CourtMatches]

    public init(day: Date, dayDisplay: String, courts: [CourtMatches]) {
        self.day = day
        self.dayDisplay = dayDisplay
        self.courts = courts
    }
}

public struct CourtMatches: Codable {
    public let courtName: String
    public let matches: [ScheduledMatch]

    public init(courtName: String, matches: [ScheduledMatch]) {
        self.courtName = courtName
        self.matches = matches
    }
}

public struct ScheduledMatch: Codable {
    public let schedule: String // "Starting at 9:00",
    public let categoryCode: String // "WD" "MD", "WDCD" "MDCD" //  "WD - Main Draw"  (category code - classification)
    public let categoryDisplay: String // "Women's Doubles" / "Men's Doubles"
    public let roundGroupDisplay: String? // "1st Round",
    public let roundCode: String? // "16",
    public let matchNumber: Int // 1
    public let classificationCode: String // "M" / "CD"
    public let classificationDisplay: String // "Main Draw" / "Consolation Draw"
    public let statusCode: String // "PC" / "TP"
    public let statusDisplay: String // "Played and completed" / "To be played"
    public let resultStatusDisplay: String? // null,
    public let resultStatusCode: String? // null,

    public let teams: [DrawTeam]

    public init(schedule: String, categoryCode: String, categoryDisplay: String, roundGroupDisplay: String?, roundCode: String?, matchNumber: Int, classificationCode: String, classificationDisplay: String, statusCode: String, statusDisplay: String, resultStatusDisplay: String?, resultStatusCode: String?, teams: [DrawTeam]) {
        self.schedule = schedule
        self.categoryCode = categoryCode
        self.categoryDisplay = categoryDisplay
        self.roundGroupDisplay = roundGroupDisplay
        self.roundCode = roundCode
        self.matchNumber = matchNumber
        self.classificationCode = classificationCode
        self.classificationDisplay = classificationDisplay
        self.statusCode = statusCode
        self.statusDisplay = statusDisplay
        self.resultStatusDisplay = resultStatusDisplay
        self.resultStatusCode = resultStatusCode
        self.teams = teams
    }
}


