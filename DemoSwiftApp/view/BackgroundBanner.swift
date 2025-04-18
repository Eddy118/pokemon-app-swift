import SwiftUI;

struct BackgroundBanner: View {
    var body: some View {
        Image("pokemon").resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: .infinity, height: 150)
            
    }
}

