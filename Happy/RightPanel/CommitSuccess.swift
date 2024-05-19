import SwiftUI

struct CommitSuccess: View {
    @Binding var showDialog: Bool
    var body: some View {
        HStack(spacing: 10) {
            VStack(spacing: 20) {
                Text("提交成功")
                    .font(Font.custom("PingFang SC", size: 26).weight(.medium))
                    .lineSpacing(31.20)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                ZStack() {
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Ellipse()
                                .stroke(Color(red: 0.33, green: 0.33, blue: 0.33), lineWidth: 1)
                        )
                        .offset(x: 0, y: 0)
                    Image(resource: "ok", ofType: "svg")
                }
                .frame(width: 30, height: 30)
            }
            .frame(width: 270)
        }
        .padding(EdgeInsets(top: 16, leading: 12, bottom: 16, trailing: 12))
        .frame(width: 398, height: 128)
        .background(.white)
        .cornerRadius(11)
        .overlay(
            RoundedRectangle(cornerRadius: 11)
                .inset(by: 1)
                .stroke(Color(red: 0.95, green: 0.46, blue: 0), lineWidth: 1)
        )
        .shadow(
            color: Color(red: 0.68, green: 0.68, blue: 0.68, opacity: 0.59), radius: 40
        )
        .frame(maxWidth: 398,maxHeight: 128)
        .onTapGesture {
            showDialog = false
        }
    }
}

struct CommitSuccess_Previews: PreviewProvider {
    
    static var previews: some View {
        @State var showDialog = false
        CommitSuccess(showDialog: $showDialog)
    }
}
