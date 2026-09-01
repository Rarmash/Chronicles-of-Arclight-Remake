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

func showMainMenu() {
    print("Choose what to do!")
    print()
    print("1. Go fight!")
    print("2. Go to the mine!")
    print("3. Check your stats")
    print("4. Check your inventory")
    print("5. Upgrade your character")
    print("6. Open shop")
    print("7. Open craft menu")
    print("8. Change your location")
    print("9. Close the game")
}

func chooseMainMenuAction() -> MainMenuAction {
    while true {
        showMainMenu()
        if let input = readLine(),
            let number = Int(input),
            let action = MainMenuAction(rawValue: number) {
                return action
            }
        print("Invalid action.")
    }
}

func handleMainMenuAction(
    _ action: MainMenuAction,
    game: inout ChroniclesGameState
) -> Bool {
    switch action {
    case .stats:
        showPlayerStats(game)
    case .quit:
        return false
    default:
        print("Not implemented yet.")
    }
    return true
}

func showPlayerStats(_ game: ChroniclesGameState) {
    print()
    print("Name: \(game.player.name)")
    print("Class: \(game.player.characterClass.displayName)")
    print("HP: \(game.player.stats.health)/\(game.player.stats.maxHealth)")
    print("Power: \(game.player.stats.power)")
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

var isRunning = true

while isRunning {
    let action = chooseMainMenuAction()
    isRunning = handleMainMenuAction(action, game: &game)
}
