import XCTest
import ArclightCore
@testable import ChroniclesGame

final class ChroniclesGameTests: XCTestCase {
    func testWarriorStartingStats() {
        let stats = CharacterClass.warrior.startingStats

        XCTAssertEqual(stats.health, 10)
        XCTAssertEqual(stats.maxHealth, 10)
        XCTAssertEqual(stats.power, 6)
        XCTAssertEqual(stats.healingPower, 5)
    }

    func testHeavyStartingStats() {
        let stats = CharacterClass.heavy.startingStats

        XCTAssertEqual(stats.health, 25)
        XCTAssertEqual(stats.maxHealth, 25)
        XCTAssertEqual(stats.power, 2)
        XCTAssertEqual(stats.healingPower, 5)
    }
    
    func testMedicStartingStats() {
        let stats = CharacterClass.medic.startingStats

        XCTAssertEqual(stats.health, 10)
        XCTAssertEqual(stats.maxHealth, 10)
        XCTAssertEqual(stats.power, 2)
        XCTAssertEqual(stats.healingPower, 15)
    }
    
}