import SwiftUI

struct ContentView1: View {
    @State private var showModal = false

    var body: some View {
        VStack {
            Button(action: {
                self.showModal = true
            }) {
                Text("Show Modal")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showModal) {
            ModalView(showModal: self.$showModal)
        }
    }
}

struct ModalView: View {
    @Binding var showModal: Bool

    var body: some View {
        VStack {
            Text("This is a modal view")
                .font(.largeTitle)
                .padding()

            Button(action: {
                self.showModal = false
            }) {
                Text("Dismiss")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
