import SwiftUI

struct PokemonDetailView: View {
    var body: some View {
        VStack(spacing: 0) {
            CustomHeaderView(title: "Charizard", showBackButton: true)
            
            ScrollView{
                BackgroundBanner()
                TagListView()
            }
          
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PokemonDetailView()
}
