import SwiftUI

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    var body: some View {
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel(Text("Next speaker"))
        }
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var speakers = [ScrumTimer.Speaker(name: "Marcel", isCompleted: false), ScrumTimer.Speaker(name: "Ondra", isCompleted: false)]
    static var previews: some View {
        MeetingFooterView(speakers: speakers)
            .previewLayout(.sizeThatFits)
    }
}
