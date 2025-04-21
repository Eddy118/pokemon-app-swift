import SwiftUI

struct Tag: View {
    var tagVal: String ;
    var body: some View {
            ZStack {
                Color.orange
                    .frame(width: 80, height: 40)
                    .cornerRadius(50)
                    .padding(.horizontal, 10)
                    .padding(.vertical,10)
                    .overlay(
                        Text("\(tagVal)")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            
                    )
                    
            }
        }
      
}
