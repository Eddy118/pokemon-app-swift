import SwiftUI;

struct BackgroundBanner: View {
    var body: some View {
        Image("pokemon").resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight:150)
            .overlay(
                            Image("pokemon")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80) .overlay(
                                    Circle()
                                        .stroke(Color.orange, lineWidth: 10) //
                                )
                                .clipShape(Circle())
                                .padding(.top, 100)
                               .padding(.leading, 10),
                            alignment: .leading
                            
                            
                        )
       
            
    }
}

