import SwiftUI

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Mobbing", attendees: ["GiBo", "MaKl", "OnKo", "JiLe", "MaBe"], lengthInMinutes: 10, color: Color("Mobbing")),
            DailyScrum(title: "Daily Standup", attendees: ["GiBo", "MaKl", "OnKo", "JiLe", "MaBe"], lengthInMinutes: 15, color: Color("Daily Standup")),
            DailyScrum(title: "Retro", attendees: ["GiBo", "MaKl", "OnKo", "JiLe", "MaBe", "NaQu"], lengthInMinutes: 60, color: Color("Retro"))
        ]
    }
}
