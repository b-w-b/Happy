//
//  Listening.swift
//  Happy
//
//  Created by Herb on 2024/5/19.
//

import SwiftUI

struct Space: View {
    @State private var selectedButton: Int? = nil
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 10, height: 10)
                    .background(Color(red: 0.19, green: 0.55, blue: 0.91))
                Text("老人的空间与判断能力")
                    .font(Font.custom("PingFang SC", size: 18))
                    .lineSpacing(18)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            HStack(spacing: 4) {
                Image(resource: "info", ofType: "svg")
                Text("请您从下方选项中选择与您观察结果一致的选项")
                    .font(Font.custom("PingFang SC", size: 16))
                    .lineSpacing(16)
                    .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
            }
        }
        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        VStack(spacing: 4) {
            TextButton(isSelected: selectedButton != nil && selectedButton == 1, textLabel: "难以判断如何前往熟悉的地方", selectedEvent: {
                selectedButton = 1
            })
            TextButton(isSelected: selectedButton != nil && selectedButton == 2, textLabel: "能准确判断如何前往熟悉的地方", selectedEvent: {
                selectedButton = 2
            })
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    Space()
}
