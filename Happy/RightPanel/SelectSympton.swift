//
//  SelectSympton.swift
//  Happy
//
//  Created by Herb on 2024/5/18.
//

import SwiftUI

struct SelectSympton: View {
    @State private var showDialog = false
    @State var currentTime = Date()
    let formatter = DateFormatter()
    
    var body: some View {
        ZStack() {
            VStack(alignment: .leading) {
                Text("陈女士，今天感受到下列变化吗？")
                    .padding(0)
                    .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                    .lineSpacing(18)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08));
                HStack() {
                    Text("当前时间")
                        .padding(0)
                        .frame(width: 170, height: 34)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
                        )
                        .onAppear {
                            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                            // Start a timer to update the current time every second
                            let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                                self.currentTime = Date()
                            }
                            // Make sure to invalidate the timer when this view disappears
                            RunLoop.current.add(timer, forMode: .common)
                        }
                    ;
                    
                    Text("发生日期")
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    let s = "____-__-__"
                    Text(s)
                        .font(Font.custom("PingFang SC", size: 18))
                        .tracking(0.72)
                        .foregroundColor(Color(red: 0.19, green: 0.22, blue: 0.24))
                        .padding(0)
                        .frame(width: 141, height: 34)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
                        );
                }
                HStack() {
                    Text(formatter.string(from: currentTime))
                        .frame(width: 170, height: 34)
                    Text("发生时间")
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    Text("__:__")
                        .font(Font.custom("PingFang SC", size: 18))
                        .tracking(0.72)
                        .lineSpacing(14)
                        .foregroundColor(Color(red: 0.19, green: 0.22, blue: 0.24))
                        .padding(0)
                        .frame(width: 141, height: 34)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
                        );
                }
                TagCloudView(tags: ["打喷嚏","恶心","呕吐","畏声","憋喘","畏光","便秘","腹泻","腹部不适", "反酸/烧心", "胀气","关节发热与肿胀","夜间抽筋","夜间盗汗","关节疼痛", "腿部肿胀","未摄入水果蔬菜","进食量减少","摄入高油脂食品","跳过正餐","不规律饮食"])
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                HStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    HStack(spacing: 10) {
                        Text("确定")
                            .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                            .lineSpacing(21.60)
                            .foregroundColor(.white)
                            .onTapGesture {
                                showDialog.toggle()
                            }
                    }
                    .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
                    .frame(width: 120, height: 44)
                    .background(Color(red: 0.19, green: 0.55, blue: 0.91))
                    .cornerRadius(6)
                    .shadow(
                        color: Color(red: 0.34, green: 0.34, blue: 0.34, opacity: 0.23), radius: 10
                    );
                    HStack(spacing: 10) {
                        Text("取消")
                            .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                            .lineSpacing(21.60)
                            .foregroundColor(.white)
                    }
                    .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
                    .frame(width: 120, height: 44)
                    .background(Color(red: 0.19, green: 0.55, blue: 0.91))
                    .cornerRadius(6)
                    .shadow(
                        color: Color(red: 0.34, green: 0.34, blue: 0.34, opacity: 0.23), radius: 10
                    )
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15)
                    
                }
                .frame(maxHeight: 44)
            }
            if showDialog {
                CommitSuccess(showDialog: $showDialog)
                    .frame(width: 300, height: 200)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    SelectSympton()
}
