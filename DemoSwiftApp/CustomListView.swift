import SwiftUI

struct ListView: View {
    let items = Array(1...20)
    
    @State private var path = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $path) {
            CustomHeaderView(title: "Gotta Catch 'Em All", showBackButton: false)
            Spacer()
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(items, id: \.self) { item in
                        CustomListRow(navigate: {
                            path.append("pokemonDetails")
                        })
                    }
                }
                .padding(.vertical)
            }
            .scrollIndicators(.hidden)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
         
            .navigationDestination(for: String.self) { value in
                if value == "pokemonDetails" {
                    PokemonDetailView()
                }
            }
        }
    }
}

struct CustomListRow: View {
    let navigate: () -> Void
    
    var body: some View {
        VStack(spacing: 2) {
            Image("pokemon")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 150)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 4) {
                Text("Charizard")
                    .font(.headline)
                    .foregroundColor(.primary)

                Spacer()
                
                Button(action: navigate) {
                    ZStack {
                        Color(red: 111 / 255, green: 169 / 255, blue: 248 / 255)
                            .frame(width: 50, height: 50) // square frame for perfect
                            .cornerRadius(100)
                            .overlay(
                                Image("right-arrow")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 20, height: 20)
                                    .clipped()
                                    .foregroundColor(Color.white)
                                    .cornerRadius(100)
                            )
                    }
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
