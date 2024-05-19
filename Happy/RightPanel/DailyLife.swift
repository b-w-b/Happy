//
//  Listening.swift
//  Happy
//
//  Created by Herb on 2024/5/19.
//

import SwiftUI

struct DailyLife: View {
    @State private var selectedButton: Int? = nil
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 10, height: 10)
                    .background(Color(red: 0.19, green: 0.55, blue: 0.91))
                Text("老人的日常生活能力")
                    .font(Font.custom("PingFang SC", size: 18))
                    .lineSpacing(18)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            HStack(spacing: 4) {
                Image(resource: "info", ofType: "svg")
                Text("可以从老人使用画笔画画等方面进行判断")
                    .font(Font.custom("PingFang SC", size: 16))
                    .lineSpacing(16)
                    .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
            }
        }
        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        HStack(spacing: 4) {
            TextButton(isSelected: selectedButton != nil && selectedButton == 1, textLabel: "花费时间增加", selectedEvent: {
                selectedButton = 1
            })
            TextButton(isSelected: selectedButton != nil && selectedButton == 2, textLabel: "难以完成", selectedEvent: {
                selectedButton = 2
            })
            TextButton(isSelected: selectedButton != nil && selectedButton == 3, textLabel: "顺利完成", selectedEvent: {
                selectedButton = 3
            })
        }
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    DailyLife()
}
