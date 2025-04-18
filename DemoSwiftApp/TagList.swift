import SwiftUI;

struct TagListView: View {
    var description: String = "At the time of the birth, it has just one tail the tail splits from it's tips as it grows older. At the time of it's birth. Charizard only has one tail the tail splits from it's tips as it grows older.";
    let tags : [String] = ["Flash","Fire"];
    let names: [String] = ["Nido","Nidoq"];
    
    var body: some View {
        VStack{
            HStack{
                ForEach(tags, id: \.self) { tag in
                    Tag(tagVal: tag)
                }
                Spacer()
            }
            Text(description)
            HStack {
                Text("Name: ").font(.title2)
                           ForEach(names, id: \.self) { name in
                               Tag(tagVal: name)
                           }
                           Spacer()
                       }
                       .padding()
            Spacer()

        }
    }
}
