import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            CustomHeaderView(title: "Gotta Catch 'Em All", showBackButton: false)
            Spacer()
            ListView()
        }
    }
}

#Preview {
    ContentView()
}
