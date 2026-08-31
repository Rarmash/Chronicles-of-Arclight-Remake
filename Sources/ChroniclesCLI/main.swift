import ArclightCore
import ChroniclesGame

let player = ChroniclesPlayer(
    name: "Andrew",
    characterClass: .warrior
)

print(player.name)
print(player.characterClass)
print(player.stats.health)
print(player.stats.power)
