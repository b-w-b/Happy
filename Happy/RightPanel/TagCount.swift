import SwiftUI

struct TagCount: View {
    @State private var count = 1;
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Text("发生频次")
                    .font(Font.custom("PingFang SC", size: 16))
                    .lineSpacing(16)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
            }
            .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 3))
            .frame(width: 121)
            HStack{
                Text("一")
                    .foregroundColor(count > 1 ? .gray : .black)
                    .frame(width: 12, height: 1.50)
                    .cornerRadius(2)
                    .onTapGesture {
                        if count > 1 {
                            count -= 1
                        }
                    }
                HStack(spacing: 2) {
                    HStack(spacing: 0) {
                        Text("\(count)")
                            .font(Font.custom("PingFang SC", size: 18))
                            .tracking(0.72)
                            .lineSpacing(14)
                            .foregroundColor(Color(red: 0.19, green: 0.22, blue: 0.24))
                    }
                    .padding(EdgeInsets(top: 8, leading: 28, bottom: 8, trailing: 28))
                    .frame(height: 30)
                    .background(.white)
                    .cornerRadius(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.19, green: 0.55, blue: 0.91), lineWidth: 0.50)
                    )
                }
                Text("次")
                    .font(Font.custom("PingFang SC", size: 18))
                    .tracking(0.72)
                    .lineSpacing(14)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                HStack(spacing: 10) {
                    Text("十")
                        .cornerRadius(2)
                        .onTapGesture {
                            count += 1
                        }
                }
            }
        }
    }
}

struct TagCount_Previews: PreviewProvider {
    static var previews: some View {
        TagCount()
    }
}
