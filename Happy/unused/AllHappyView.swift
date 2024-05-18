import SwiftUI

struct AllHappyView: View {
    var body: some View {
        ZStack() {
            Group {
                ZStack() {
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 28, height: 28)
                        .background(Color(red: 0.94, green: 0.99, blue: 1))
                        .overlay(
                            Ellipse()
                                .stroke(Color(red: 0.03, green: 0.63, blue: 0.71), lineWidth: 0.84)
                        )
                    ZStack() { }
                        .frame(width: 13.69, height: 15.33)
                        .offset(x: 0.15, y: -0.25)
                        .background(
                            Image(resource: "person", ofType: "svg")
                        )
                }
                .frame(width: 28, height: 28)
                .offset(x: -359, y: -368)
                HStack(spacing: 10) {
                    Text("陈XX")
                        .font(Font.custom("PingFang SC", size: 16).weight(.semibold))
                        .foregroundColor(Color(red: 0.03, green: 0.63, blue: 0.71))
                }
                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4))
                .background(Color(red: 0.94, green: 0.99, blue: 1))
                .cornerRadius(3)
                .offset(x: -317.50, y: -368.50)
                Text("近两日\n您可能需要注意👇")
                    .font(Font.custom("PingFang SC", size: 32).weight(.medium))
                    .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                    .offset(x: -440, y: -305.00)
                HStack(alignment: .top, spacing: 10) {
                    Text("状态与风险层")
                        .font(Font.custom("PingFang SC", size: 16).weight(.semibold))
                        .foregroundColor(Color(red: 0.03, green: 0.63, blue: 0.71))
                }
                .padding(4)
                .background(Color(red: 0.94, green: 0.99, blue: 1))
                .cornerRadius(3)
                .offset(x: -520, y: -230)
                Group {
                    LeftHealthItem{Text("头部不适的情况")}
                        .offset(x: -432.50, y: -105)
                    LeftHealthItem{Text("睡眠不佳的情况")}
                        .offset(x: -432.50, y: -173)
                    LeftHealthItem{Text("肠胃不适的情况")}
                        .offset(x: -432.50, y: -37)
                }
                Group {
                    Text("更多状态与风险")
                        .font(Font.custom("PingFang SC", size: 16).weight(.medium))
                        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                        .offset(x: -506, y: 29)
                    ZStack() {
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 20, height: 20)
                            .overlay(
                                Ellipse()
                                    .stroke(Color(red: 0.33, green: 0.33, blue: 0.33), lineWidth: 0.60)
                            )
                            .offset(x: 0, y: 0)
                        ZStack() { }
                            .frame(width: 10, height: 10)
                            .offset(x: 0, y: 0)
                            .background(
                                Image(resource: "plus", ofType: "svg")
                            )
                    }
                    .frame(width: 20, height: 20)
                    .offset(x: -429, y: 29)
                }
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(
                            Image(resource: "chen", ofType: "svg")
                        )
                        .offset(x: 0.45, y: -42.05)
                    HappyWoman()
                    Text("看起来您的状态似乎很不错\n再接再厉~")
                        .font(Font.custom("PingFang SC", size: 32).weight(.medium))
                        .lineSpacing(57.44)
                        .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                        .offset(x: 0, y: 99.50)
                }
                .frame(width: 384, height: 313)
                .offset(x: 160, y: -65.50)
            };
        }
        .frame(width: 1194, height: 834)
        .background(.white);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AllHappyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
