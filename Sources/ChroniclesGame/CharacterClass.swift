import ArclightCore

public enum CharacterClass {
    case heavy
    case medic
    case warrior

    public var startingStats: PlayerStats {
        switch self {
            case .heavy:
                return PlayerStats(
                    health: 25,
                    maxHealth: 25,
                    power: 2,
                    healingPower: 5
                )
            case .medic:
                return PlayerStats(
                    health: 10,
                    maxHealth: 10,
                    power: 2,
                    healingPower: 15
                )
            case .warrior:
                return PlayerStats(
                    health: 10,
                    maxHealth: 10,
                    power: 6,
                    healingPower: 5
                )
        }
    }
}