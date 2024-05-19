//
//  Listening.swift
//  Happy
//
//  Created by Herb on 2024/5/19.
//

import SwiftUI

struct Listening: View {
    @State private var selectedButton: Int? = nil
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(alignment: .top, spacing: 4) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 10, height: 10)
                    .background(Color(red: 0.19, green: 0.55, blue: 0.91))
                Text("老人的听力水平")
                    .font(Font.custom("PingFang SC", size: 18))
                    .lineSpacing(18)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            HStack(spacing: 4) {
                Image(resource: "info", ofType: "svg")
                Text("可以从老人响应您提出问题的时间、次数进行判断")
                    .font(Font.custom("PingFang SC", size: 16))
                    .lineSpacing(16)
                    .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
            }
        }
        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        HStack(spacing: 4) {
            TextButton(isSelected: selectedButton != nil && selectedButton == 1, textLabel: "老人听力下降", selectedEvent: {
                selectedButton = 1
            }) 
            TextButton(isSelected: selectedButton != nil && selectedButton == 2, textLabel: "老人听力维持现状", selectedEvent: {
                selectedButton = 2
            })
        }
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    Listening()
}
