import SwiftUI

struct PokemonDetailView: View {
    var body: some View {
        VStack(spacing: 0) {
            CustomHeaderView(title: "Charizard", showBackButton: false)
            
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
