import SwiftUI

struct ContentView1: View {
    @State private var showDialog = false

    var body: some View {
        ZStack {
            VStack {
                Button("Show Dialog") {
                    showDialog.toggle()
                }
            }
            
            if showDialog {
                FixedSizeDialogView(showDialog: $showDialog)
                    .frame(width: 300, height: 200) // Customize the size here
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .transition(.scale)
            }
        }
        .animation(.easeInOut, value: showDialog)
    }
}

struct FixedSizeDialogView: View {
    @Binding var showDialog: Bool

    var body: some View {
        VStack {
            Text("This is a fixed size dialog")
                .padding()
            Button("Dismiss") {
                showDialog = false
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
