//
//  ToggleButton.swift
//  Happy
//
//  Created by Herb on 2024/5/19.
//

import SwiftUI

struct ToggleButton: View {
    @State var isSelected: Bool
    var selectedEvent : () -> Void
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 60, height: 30)
                .background(
                    isSelected ? Color(red: 0.19, green: 0.55, blue: 0.91)
                    : Color(.gray))
                .cornerRadius(15)
                .offset(x: 0, y: 0)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 24.55, height: 24.55)
                .background(.white)
                .cornerRadius(12.27)
                .offset(x: isSelected ? 15 : -15, y: -0)
                .shadow(
                    color: Color(red: 0.12, green: 0.15, blue: 0.30, opacity: 0.10), radius: 5.45, y: 2.73
                )
        }.onTapGesture {
            isSelected.toggle()
        }
    }
}

#Preview {
    ToggleButton(isSelected : true,selectedEvent: {})
}
