# Chronicles of Arclight Remake

A ground-up remake of the original **Chronicles of Arclight**, written in Swift.

The original game was developed in Python. This project rebuilds its gameplay systems with a cleaner architecture while preserving the behavior and ideas of the original game.

> Work in progress.

## Current status

The project is currently in the early development stage.

Implemented:

- Character creation
- Player classes:
  - Heavy
  - Medic
  - Warrior
- Class-specific starting stats
- Basic game state
- Main menu
- Typed main menu actions
- Player stats screen
- Game loop and quit action
- Unit tests for starting stats and menu actions

## Architecture

The project is split into several Swift Package Manager targets.

### `ArclightCore`

Generic game mechanisms that may later form the foundation of the Nexus engine.

It must not depend on Chronicles-specific content.

### `ChroniclesGame`

Game-specific rules and data for Chronicles of Arclight.

Examples:

- Character classes
- Player model
- Game state
- Main menu actions

### `ChroniclesCLI`

Command-line frontend for the game.

It handles:

- User input
- Menu rendering
- Output

Dependency direction:

```text
ArclightCore
    ↑
ChroniclesGame
    ↑
ChroniclesCLI
```

## Building

Requires Swift 6.x.

```bash
swift build
```

## Running

```bash
swift run Chronicles-of-Arclight-Remake
```

## Tests

```bash
swift test
```

## Original game

The remake is based on the original Python version of Chronicles of Arclight.

Original repository:

https://github.com/Intofire-Studios/Chronicles-of-Arclight

## Project goals

The immediate goal is to recreate Chronicles of Arclight while learning Swift and improving the architecture of the original game.

Reusable systems may gradually be extracted into **ArclightCore**, which can later evolve into the Nexus game framework.

The game comes first; generalization is done only when real game requirements justify it.
