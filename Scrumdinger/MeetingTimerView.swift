import SwiftUI

struct MeetingTimerView: View {
    
    let speakers: [ScrumTimer.Speaker]
    var scrumColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(lineWidth: 24, antialiased: true)
            Text("Someone is speaking")
        }.padding(.horizontal)
    }
}

struct MeetingTimerView_Previews: PreviewProvider {
    static var speakers = [ScrumTimer.Speaker(name: "Kim", isCompleted: true)]
    
    static var previews: some View {
        MeetingTimerView()
    }
}
