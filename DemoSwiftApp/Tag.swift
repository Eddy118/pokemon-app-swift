import SwiftUI

struct Tag: View {
    var tagVal: String ;
    var body: some View {
       
            ZStack {
                Color.orange
                    .frame(width: 70, height: 40)
                    .cornerRadius(50)
                    .overlay(
                        Text("\(tagVal)")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    )
            }
            .padding(.leading, 10)
            .padding(.top, 30)
        }
      
}
