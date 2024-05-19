//
//  TextButton.swift
//  Happy
//
//  Created by Herb on 2024/5/19.
//

import SwiftUI

struct TextButton: View {
    var isSelected: Bool
    var textLabel: String
    var selectedEvent : () -> Void
    var body: some View {
        HStack(alignment: .top, spacing: 4) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 10, height: 10)
            
            Text(textLabel)
                .font(Font.custom("PingFang SC", size: 18))
                .lineSpacing(18)
                .foregroundColor(
                    isSelected ? Color(.white) : Color(red: 0.33, green: 0.33, blue: 0.33))
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        .frame(maxWidth: .infinity, minHeight: 36, maxHeight: 36)
        .background(
            isSelected ?
                Color(red: 0.19, green: 0.55, blue: 0.91)
            :
                Color(red: 0.97, green: 0.97, blue: 0.97)
        )
        .cornerRadius(4)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .inset(by: 0.50)
                .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
        )
        .onTapGesture {
            if !isSelected {
                selectedEvent()
            }
        }
    }
}

#Preview {
    TextButton(isSelected:false, textLabel: "老人的听力水平",selectedEvent: {print("ddd")})
}
