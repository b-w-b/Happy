//
//  lefthealthitem.swift
//  Happy
//
//  Created by Herb on 2024/5/15.
//

import SwiftUI

struct LeftHealthItem<Content: View>: View {
    @ViewBuilder let content: Content
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 10) {
                content
                    .font(Font.custom("PingFang SC", size: 16).weight(.semibold))
                    .lineSpacing(16)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                ZStack() {
                    Text("1.12")
                        .font(Font.custom("PingFang SC", size: 14).weight(.medium))
                        .lineSpacing(16)
                        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.08))
                        .offset(x: -104, y: 0)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 216.40, height: 11)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.13, green: 0.57, blue: 0.97), Color(red: 0.98, green: 0.18, blue: 0.57)]), startPoint: .leading, endPoint: .trailing)
                            )
                            .cornerRadius(22)
                            .offset(x: 8.20, y: 0)
                    }
                    .frame(width: 200, height: 11)
                    .offset(x: 16, y: -0.50)
                }
                .frame(width: 232, height: 16)
            }
            .frame(width: 247)
        }
        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        .frame(width: 279, height: 58)
        .background(.white)
        .cornerRadius(11)
        .overlay(
            RoundedRectangle(cornerRadius: 11)
                .inset(by: 0.50)
                .stroke(Color(red: 0.33, green: 0.33, blue: 0.33), lineWidth: 0.50)
        )
        .offset(x: 0, y: 0)
        .shadow(
            color: Color(red: 0.34, green: 0.34, blue: 0.34, opacity: 0.23), radius: 10
        )
    }
}

#Preview {
    LeftHealthItem<Text>{Text("头部不适的情况")}
        .previewInterfaceOrientation(.landscapeLeft)
}
