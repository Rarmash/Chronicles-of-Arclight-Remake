import ArclightCore
import ChroniclesGame

func chooseCharacterClass() -> CharacterClass {
    while true {
        print()
        print("Choose your class:")
        print("1. Heavy")
        print("2. Medic")
        print("3. Warrior")

        if let input = readLine(),
           let number = Int(input) {

            switch number {
            case 1:
                return .heavy
            case 2:
                return .medic
            case 3:
                return .warrior
            default:
                print("Invalid class.")
            }

        } else {
            print("Invalid class.")
        }
    }
}

func choosePlayerName() -> String {
    while true {
        print("Enter your name:")
        if let name = readLine() {
            if !name.isEmpty {
                return name
            }
        }
        print("Invalid name.")
    }
}

print("Chronicles of Arclight")
print()

let name = choosePlayerName()
let characterClass = chooseCharacterClass()

var game = ChroniclesGameState(
    player: ChroniclesPlayer(
        name: name,
        characterClass: characterClass
    )
)

print()
print("Name: \(game.player.name)")
print("Class: \(game.player.characterClass.displayName)")
print("HP: \(game.player.stats.health)/\(game.player.stats.maxHealth)")
print("Power: \(game.player.stats.power)")
