public struct PlayerStats {
    public var health: Int
    public var maxHealth: Int
    public var power: Int
    public var healingPower: Int

    public init(
        health: Int,
        maxHealth: Int,
        power: Int,
        healingPower: Int
    ) {
        self.health = health
        self.maxHealth = maxHealth
        self.power = power
        self.healingPower = healingPower
    }
}