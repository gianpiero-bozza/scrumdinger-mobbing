import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var scrumColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(scrumColor)
                .frame(height: 20)
            ProgressView(configuration)
                .frame(height: 12)
                .padding(.horizontal)
        }
    }
}
