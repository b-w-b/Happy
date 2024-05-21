import SwiftUI

struct ContentView122: View {
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Text("Hello, World!")
                    .alignmentGuide(HorizontalAlignment.center) { dimension in
                        let centerX = geometry.size.width / 2
                        let alignmentX = abs(dimension.width) < .ulpOfOne ? centerX : dimension.width
                        print("Alignment guide evdaluated. Center X: \(alignmentX)")
                        return alignmentX
                    }
            }
        }
    }
}

struct ContentView12_Previews: PreviewProvider {
    static var previews: some View {
        ContentView122()
    }
}
