import SwiftUI

struct PokemonDetailView: View {
    var body: some View {
        VStack(spacing: 0) {
            CustomHeaderView(title: "adad ad", showBackButton: true)
            BackgroundBanner()
            Spacer()
        }
    }
}

#Preview {
    PokemonDetailView()
}
