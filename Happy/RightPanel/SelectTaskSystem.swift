import SwiftUI

struct SelectTaskSystem: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      HStack(spacing: 2) {
        Text("执行方式")
          .font(Font.custom("PingFang SC", size: 18))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
        HStack(spacing: 10) {
          Text("智能播报")
            .font(Font.custom("PingFang SC", size: 18))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.19, green: 0.55, blue: 0.91))
        }
        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        .frame(width: 92)
        .background(Color(red: 0.95, green: 0.97, blue: 1))
        .cornerRadius(4)
        .overlay(
          RoundedRectangle(cornerRadius: 4)
            .inset(by: 0.50)
            .stroke(Color(red: 0.19, green: 0.55, blue: 0.91), lineWidth: 0.50)
        ).offset(x: 28, y: 0)
      }
      .frame(width: 220)
      ZStack() {
        Text("系统执行日期")
          .font(Font.custom("PingFang SC", size: 18))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
          .offset(x: -76, y: 0)
        HStack(spacing: 10) {
          Text("2024-02-16")
            .font(Font.custom("PingFang SC", size: 18))
            .tracking(0.72)
            .lineSpacing(14)
            .foregroundColor(Color(red: 0.19, green: 0.22, blue: 0.24))
        }
        .padding(10)
        .frame(width: 132, height: 34)
        .cornerRadius(4)
        .overlay(
          RoundedRectangle(cornerRadius: 4)
            .inset(by: 0.50)
            .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
        )
        .offset(x: 64, y: 0)
      }
      .frame(width: 260, height: 34)
      ZStack() {
        Text("系统执行时间")
          .font(Font.custom("PingFang SC", size: 18))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
          .offset(x: -44, y: 0)
        HStack(spacing: 10) {
          Text("16:00")
            .font(Font.custom("PingFang SC", size: 18))
            .tracking(0.72)
            .lineSpacing(14)
            .foregroundColor(Color(red: 0.19, green: 0.22, blue: 0.24))
        }
        .padding(10)
        .frame(width: 68, height: 34)
        .cornerRadius(4)
        .overlay(
          RoundedRectangle(cornerRadius: 4)
            .inset(by: 0.50)
            .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
        )
        .offset(x: 64, y: 0)
      }
      .frame(width: 196, height: 34)
      ZStack() {
        Text("执行前确认")
          .font(Font.custom("PingFang SC", size: 18))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
          .offset(x: -31, y: 0)
          ToggleButton(isSelected: true, selectedEvent: {})
        .frame(width: 60, height: 30)
        .offset(x: 64, y: 0)
      }
      .frame(width: 188, height: 30)
    }
    .frame(width: 260, height: 170);
  }
}

struct SelectTaskSystem_Previews: PreviewProvider {
  static var previews: some View {
      SelectTaskSystem()
  }
}
