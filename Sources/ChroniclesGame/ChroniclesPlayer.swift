import ArclightCore

public struct ChroniclesPlayer {
    public let name: String
    public let characterClass: CharacterClass
    public var stats: PlayerStats

    public init(
        name: String,
        characterClass: CharacterClass,
    ) {
        self.name = name
        self.characterClass = characterClass
        self.stats = characterClass.startingStats
    }
}