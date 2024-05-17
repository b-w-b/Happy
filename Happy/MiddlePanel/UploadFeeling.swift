import SwiftUI

struct UploadFeeling: View {
  var body: some View {
    HStack(spacing: 10) {
      Text("上传")
        .font(Font.custom("PingFang SC", size: 18).weight(.medium))
        .lineSpacing(21.60)
        .foregroundColor(.white)
    }
    .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
    .frame(width: 398, height: 60)
    .background(Color(red: 0.55, green: 0.55, blue: 0.55))
    .cornerRadius(6);
  }
}

struct UploadFeeling_Previews: PreviewProvider {
  static var previews: some View {
      UploadFeeling()
  }
}
