import SwiftUI

struct HowYourFeeling: View {
  var body: some View {
    HStack(alignment: .top, spacing: 10) {
      Text("陈女士，您感觉如何呢？")
        .font(Font.custom("PingFang SC", size: 22))
        .lineSpacing(33)
        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
        .opacity(0.60)
    }
    .padding(EdgeInsets(top: 16, leading: 12, bottom: 16, trailing: 12))
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(.white)
    .cornerRadius(6)
    .overlay(
      RoundedRectangle(cornerRadius: 6)
        .inset(by: 1)
        .stroke(Color(red: 0.19, green: 0.55, blue: 0.91), lineWidth: 1)
    );
  }
}

struct HowYourFeeling_Previews: PreviewProvider {
  static var previews: some View {
      HowYourFeeling()
  }
}
