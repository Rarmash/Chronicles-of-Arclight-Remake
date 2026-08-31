import ArclightCore
import ChroniclesGame

print("Chronicles of Arclight")
print()
print("Enter your name:")
if let name = readLine() {
    print()
    print("Choose your class:")
    print("1. Heavy")
    print("2. Medic")
    print("3. Warrior")
    if let input = readLine(),
        let number = Int(input) {
            var selectedClass: CharacterClass? = nil

            switch number {
                case 1:
                    selectedClass = .heavy
                case 2:
                    selectedClass = .medic
                case 3:
                    selectedClass = .warrior
                default:
                    print("Invalid class.")
            }

            if let characterClass = selectedClass {
                let player = ChroniclesPlayer(
                    name: name,
                    characterClass: characterClass
                )

                print("Name: \(player.name)")
                print("Class: \(player.characterClass)")
                print("HP: \(player.stats.health)/\(player.stats.maxHealth)")
                print("Power: \(player.stats.power)")
            }
        }
}
