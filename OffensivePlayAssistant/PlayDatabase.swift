import Foundation

class PlayDatabase {
    static let shared = PlayDatabase()
    private var plays: [Play] = []
    private let fileName = "plays.csv"
    
    private init() {}

    func loadPlays() {
        // Load plays from CSV file
        // Implement CSV parsing logic here
    }
    
    func savePlay(_ play: Play) {
        plays.append(play)
        // Save plays to CSV
        // Implement CSV writing logic here
    }
    
    func getPlays() -> [Play] {
        return plays
    }
}
