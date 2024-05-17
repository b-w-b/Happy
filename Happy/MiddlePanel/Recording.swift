import SwiftUI

struct Recording: View {
    var body: some View {
        ZStack() {
            HStack() {
                Text("点击开始录音")
                    .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                    .lineSpacing(21.60)
                    .foregroundColor(.white)
                    .padding(12)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                Image(resource: "recording", ofType: "svg")
                    .frame(width: 78, height: 56)
            }
        }
        .frame(width: 398, height: 60)
        .background(Color(red: 0.19, green: 0.55, blue: 0.91))
        .cornerRadius(6);
    }
}

struct Recording_Previews: PreviewProvider {
    static var previews: some View {
        Recording()
    }
}
