import SwiftUI

struct CustomView: View {
    var isSelected: Bool

    var body: some View {
        Text(isSelected ? "Selected" : "Not Selected")
            .padding()
            .background(isSelected ? Color.green : Color.red)
            .cornerRadius(10)
    }
}


struct CustomModifier: ViewModifier {
    var isSelected: Bool
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func applyCustomModifier(isSelected: Bool) -> some View {
        self.modifier(CustomModifier(isSelected: isSelected))
    }
}

struct ContentView1: View {
    @State private var isSelected = false

    var body: some View {
        VStack {
            CustomView(isSelected: isSelected)
                .applyCustomModifier(isSelected: isSelected)
            
            Button(action: {
                isSelected.toggle()
            }) {
                Text("Toggle Selection")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
