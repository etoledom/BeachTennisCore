import Foundation

public struct Tournament: Codable, Hashable {
    public let tournamentName: String
    public let dates: String
    public let location: String
    public let category: Category
    public let categoryCode: String
    public let categoryDisplay: String
    public let prizeMoney: String
    public let id: Int
    public let name: String
    public let promotionalName: String
    public let hostNation: String
    public let hostNationCode: String
    public let venue: String
    public let startDate: Date
    public let endDate: Date
    public let duration: Int
    public let tournamentKey: String
    public let tournamentLink: String
    public let year: Int
    public let flagImageLink: String
    public let liveLink: String?

    public init(tournamentName: String, dates: String, location: String, category: String, prizeMoney: String, id: Int, name: String, promotionalName: String, hostNation: String, hostNationCode: String, venue: String, startDate: Date, endDate: Date, duration: Int, tournamentKey: String, tournamentLink: String, year: Int, flagImageLink: String, liveLink: String?) {
        self.tournamentName = tournamentName
        self.dates = dates
        self.location = location
        self.category = Category(rawValue: category) ?? .unknown
        self.categoryDisplay = Category(rawValue: category)?.rawValue ?? category
        self.categoryCode = category
        self.prizeMoney = prizeMoney
        self.id = id
        self.name = name
        self.promotionalName = promotionalName
        self.hostNation = hostNation
        self.hostNationCode = hostNationCode
        self.venue = venue
        self.startDate = startDate
        self.endDate = endDate
        self.duration = duration
        self.tournamentKey = tournamentKey.lowercased()
        self.tournamentLink = tournamentLink
        self.year = year
        self.flagImageLink = flagImageLink
        self.liveLink = liveLink
    }

    public init() {
        self.tournamentName = ""
        self.dates = ""
        self.location = ""
        self.category = .unknown
        self.categoryDisplay = ""
        self.categoryCode = ""
        self.prizeMoney = ""
        self.id = 0
        self.name = ""
        self.promotionalName = ""
        self.hostNation = ""
        self.hostNationCode = ""
        self.venue = ""
        self.startDate = Date()
        self.endDate = Date()
        self.duration = 0
        self.tournamentKey = ""
        self.tournamentLink = ""
        self.year = 0
        self.flagImageLink = ""
        self.liveLink = ""
    }
}

public struct TournamentDetail: Codable {
    public let entryDeadline: Date?
    public let withdrawalDeadline: Date?
    public let qualifyingStartsDate: Date?
    public let mainDrawStartDate: Date?
    public let venueAddress: String?

    public let display: [LabelValueField]

    public init(entryDeadline: Date?, withdrawalDeadline: Date?, qualifyingStartsDate: Date?, mainDrawStartDate: Date?, venueAddress: String?, display: [LabelValueField]) {
        self.entryDeadline = entryDeadline
        self.withdrawalDeadline = withdrawalDeadline
        self.qualifyingStartsDate = qualifyingStartsDate
        self.mainDrawStartDate = mainDrawStartDate
        self.display = display
        self.venueAddress = venueAddress
    }
}

public enum FieldActionId: String, Codable {
    case none
    case openMaps
    case copyText
    case dateNotification
}
public struct LabelValueField: Codable {
    public let action: FieldActionId
    public let label: String
    public let value: String

    public init(label: String, value: String, action: FieldActionId) {
        self.label = label
        self.value = value
        self.action = action
    }
}
