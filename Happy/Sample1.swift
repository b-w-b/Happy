import SwiftUI

struct ContentView12: View {
    @State private var text: String = ""

    var body: some View {
        ZStack(alignment: .topLeading) {
  
            
            TextEditor(text: $text)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                .multilineTextAlignment(.leading)
                .padding()
                .foregroundColor(.black)
                .background(Color.gray.opacity(0.1))
            
            if text.isEmpty {
                Text("Enter text here")
                    .foregroundColor(.gray)
                    .padding()
                    .background(.clear)
            }
        }
        .padding()
    }
}

struct ContentView12_Previews: PreviewProvider {
    static var previews: some View {
        ContentView12()
    }
}
