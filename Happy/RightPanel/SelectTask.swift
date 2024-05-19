//
//  SelectBloodPressure.swift
//  Happy
//
//  Created by Herb on 2024/5/18.
//

import SwiftUI

struct SelectTask: View {
    @State private var showDialog = false
    @State private var highPressure = "120"
    @State private var lowPressure = "80"
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack() {
            VStack(alignment: .leading) {
                HStack() {
                    Text("请按照以下指示完成任务")
                        .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    Image(resource: "info", ofType: "svg")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                }.frame(maxHeight: 30)
                HStack() {
                    Text("任务01")
                        .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                        .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0));
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    Image(resource: "refresh", ofType: "svg")
                    Text("换一个")
                        .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20));
                }.frame(maxHeight: 48)
                HStack(spacing: 10) {
                    Text("“你知道周围最近的菜场在哪吗，你可以试着画一个大概的路线图吗”")
                        .lineLimit(nil)
                        .font(Font.custom("PingFang SC", size: 26).weight(.medium))
                        .foregroundColor(.white)
                }
                .padding(10)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 0.19, green: 0.55, blue: 0.91), Color(red: 0.07, green: 0.67, blue: 1)]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(8)
                .shadow(
                    color: Color(red: 0.19, green: 0.55, blue: 0.91, opacity: 0.56), radius: 10
                )
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                VStack {
                    Picker("Tabs", selection: $selectedTab) {
                        Text("系统执行").tag(0)
                        Text("照护者执行").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    TabView(selection: $selectedTab) {
                        SelectTaskSystem()
                            //.padding([.top, .leading])
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .tag(0)
                        SelectTaskMonitor()
                            //.padding([.top, .leading])
                            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .tag(1)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)) // Hide the default tab indicators
                }.frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
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
    SelectTask()
}
