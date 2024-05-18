import SwiftUI

struct UploadMore: View {
  var body: some View {
    ZStack() {
      VStack(spacing: 20) {
        ZStack() {
          Image(resource: "uploadmoreinfo", ofType: "svg")
          .frame(width: 55, height: 55.66)
          .offset(x: 0, y: 2.10)
        }
        .frame(width: 55, height: 59.86)
        Text("上传更多信息")
          .font(Font.custom("PingFang SC", size: 18).weight(.semibold))
          .lineSpacing(21.60)
          .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
      }
      .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
      .frame(width: 191, height: 160)
      .background(Color(red: 0.97, green: 0.97, blue: 0.97))
      .cornerRadius(6)
      .offset(x: 0, y: 0)
      .shadow(
        color: Color(red: 0.73, green: 0.73, blue: 0.73, opacity: 0.18), radius: 12, x: 4, y: 4
      )
    }
    .frame(width: 191, height: 160);
  }
}

struct UploadMore_Previews: PreviewProvider {
  static var previews: some View {
      UploadMore()
  }
}
