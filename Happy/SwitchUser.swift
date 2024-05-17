import SwiftUI

struct SwitchUser: View {
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Image(resource: "switch", ofType: "svg")
      Text("切换用户")
        .font(Font.custom("PingFang SC", size: 20).weight(.medium))
        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
        Rectangle().foregroundColor(.clear).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
    .padding(4)
    .frame(width: 200, height: 30.50)
    .cornerRadius(2);
  }
}

struct SwitchUser_Previews: PreviewProvider {
  static var previews: some View {
      SwitchUser()
  }
}
