//
//  ChangeLabel.swift
//  Happy
//
//  Created by Herb on 2024/5/18.
//

import SwiftUI

struct ChangeLabel<Content: View>: View {
    @ViewBuilder let content: Content
    
    var body: some View {
        HStack(spacing: 10) {
            content
            .font(Font.custom("PingFang SC", size: 18))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
        }
        .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
        .frame(width: 74, height: 36)
        .background(Color(red: 0.97, green: 0.97, blue: 0.97))
        .cornerRadius(4)
        .overlay(
          RoundedRectangle(cornerRadius: 4)
            .inset(by: 0.50)
            .stroke(Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
        )
    }
}

#Preview {
    ChangeLabel<Text>{Text("打喷嚏")}
}
