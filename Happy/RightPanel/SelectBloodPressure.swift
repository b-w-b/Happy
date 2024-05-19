//
//  SelectBloodPressure.swift
//  Happy
//
//  Created by Herb on 2024/5/18.
//

import SwiftUI

struct SelectBloodPressure: View {
    @State private var showDialog = false
    @State private var highPressure = "120"
    @State private var lowPressure = "80"
    
    var body: some View {
        ZStack() {
            VStack(alignment: .leading) {
                Text("添加您的血压测量结果")
                    .padding(0)
                    .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                    .lineSpacing(18)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                    .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0));
                HStack() {
                    Text("测量日期")
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    
                    Text("____-__-__")
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
                    Text("测量时间")
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
                HStack() {
                    Text("收缩压    ")
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    TextField("", text: $highPressure)
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
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
                HStack() {
                    Text("舒张压    ")
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    TextField("", text: $lowPressure)
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
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
    SelectBloodPressure()
}
