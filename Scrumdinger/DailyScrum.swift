import SwiftUI

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
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
