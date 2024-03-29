import SwiftUI

struct DailyScrum: Identifiable, Codable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    var history: [History]
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color, history: [History] = []) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
        self.history = history
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Mobbing", attendees: ["GiBo", "MaKl", "OnKo", "JiLe", "MaBe"], lengthInMinutes: 10, color: Color.yellow),
            DailyScrum(title: "Daily Standup", attendees: ["GiBo", "MaKl", "OnKo", "JiLe", "MaBe"], lengthInMinutes: 15, color: Color.orange),
            DailyScrum(title: "Retro", attendees: ["GiBo", "MaKl", "OnKo", "JiLe", "MaBe", "NaQu"], lengthInMinutes: 60, color: Color.blue)
        ]
    }

    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = Color.purple
    }
    
    var data: Data {
        return Data (title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}
