import SwiftUI

struct CustomHeaderView: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String;
    var showBackButton: Bool;
    var body: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                if showBackButton {
                    Image("back-arrow").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .font(.title2)
                } else {
                    Image("pokeball")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .font(.title2)
                }
            }
 
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)

            Spacer()
        }
        .padding()
        .foregroundColor(.blue)
        .background(Color.white)
        .shadow(color: .gray.opacity(0.2), radius: 2, x: 0, y: 2)
    }
}
