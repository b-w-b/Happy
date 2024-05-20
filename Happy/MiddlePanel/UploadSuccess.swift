import SwiftUI

struct UploadSuccess: View {
    @Binding var showDialog: Bool
    var body: some View {
        HStack(spacing: 10) {
            HStack(spacing: 20) {
                Text("上传成功")
                    .font(Font.custom("PingFang SC", size: 26).weight(.medium))
                    .lineSpacing(31.20)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                ZStack() {
                    Image(resource: "ok", ofType: "svg")
                        .foregroundColor(.clear)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Ellipse()
                                .stroke(Color(red: 0.33, green: 0.33, blue: 0.33), lineWidth: 1)
                        )
                        .offset(x: 0, y: 0)
                }
                .frame(width: 30, height: 30)
            }
            .frame(height: 31)
        }
        .padding(EdgeInsets(top: 16, leading: 12, bottom: 16, trailing: 12))
        .frame(width: 270, height: 63)
        .background(.white)
        .cornerRadius(39)
        .overlay(
            RoundedRectangle(cornerRadius: 39)
                .inset(by: 1)
                .stroke(Color(red: 0.95, green: 0.46, blue: 0), lineWidth: 1)
        )
        .shadow(
            color: Color(red: 0.68, green: 0.68, blue: 0.68, opacity: 0.59), radius: 40
        )
        .onTapGesture {
            showDialog = false
        }
    }
}


struct UploadSuccess_Previews: PreviewProvider {
    static var previews: some View {
        @State var showDialog = false
        UploadSuccess(showDialog: $showDialog)
    }
}
