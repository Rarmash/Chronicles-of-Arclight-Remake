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

let player = ChroniclesPlayer(
    name: name,
    characterClass: characterClass
)

print()
print("Name: \(player.name)")
print("Class: \(player.characterClass)")
print("HP: \(player.stats.health)/\(player.stats.maxHealth)")
print("Power: \(player.stats.power)")
