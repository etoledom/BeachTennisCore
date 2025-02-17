public enum Category: String, CaseIterable, Codable, Sendable {
    case bt10 = "BT10"
    case bt50 = "BT50"
    case bt100 = "BT100"
    case bt200 = "BT200"
    case bt400 = "BT400"
    case ss50 = "SS50"
    case ss75 = "SS75"
    case wChamp = "W" // World Championship
    case wCup = "WCUP" // World Cup
    case panAmerican = "PA" // Panamerican Championship
    case euro = "E" // European Championship
    case sstf = "SSTF" // Tour finals
    case btss = "BTSS" // Sand Series
    case unknown

    public var isSilver: Bool {
        switch self {
        case .bt200, .bt400:
            true
        default:
            false
        }
    }

    public var isMayor: Bool {
        switch self {
        case .bt10, .bt50, .bt100, .bt200, .bt400, .unknown:
            false
        default:
            true
        }
    }

    public var isSandSeries: Bool {
        switch self {
            case .ss50, .ss75, .btss:
                true
            default:
                false
        }
    }

    public var isChampionship: Bool {
        switch self {
            case .wChamp, .wCup, .panAmerican, .euro:
                true
            default:
                false
        }
    }
}

public struct RegionFilter: Codable, Hashable, Sendable {
    public let nameDisplay: String
    public let code: String
    public let flagURL: String

    public init(nameDisplay: String, code: String, flagURL: String) {
        self.nameDisplay = nameDisplay
        self.code = code
        self.flagURL = flagURL
    }
}

public struct ContinentsFilter: Codable, Hashable, Sendable {
    public let nameDisplay: String
    public let code: String

    public init(nameDisplay: String, code: String) {
        self.nameDisplay = nameDisplay
        self.code = code
    }
}

public struct Filters: Codable, Sendable {
    public let regions: [RegionFilter]
    public let tournamentsContinents: [ContinentsFilter]
    public let playersRegions: [RegionFilter]

    public init(regions: [RegionFilter], playersRegions: [RegionFilter], tournamentsContinents: [ContinentsFilter]) {
        self.regions = regions
        self.playersRegions = playersRegions
        self.tournamentsContinents = tournamentsContinents
    }
}
