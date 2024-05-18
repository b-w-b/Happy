//
//  HappyWoman.swift
//  Happy
//
//  Created by Herb on 2024/5/16.
//

import SwiftUI

struct HappyWoman: View {
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    Image(resource: "chen", ofType: "svg")
                )
                .offset(x: 0.45, y: -42.05)
            ZStack() {
                Text("👏")
                    .font(Font.custom("PingFang SC", size: 35.37).weight(.medium))
                    .lineSpacing(63.49)
                    .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                    .offset(x: -75.99, y: 27)
                    .rotationEffect(.degrees(17.77))
                Text("🎊")
                    .font(Font.custom("PingFang SC", size: 31.47).weight(.medium))
                    .lineSpacing(56.49)
                    .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                    .offset(x: 123.10, y: -27.49)
                    .rotationEffect(.degrees(-25.48))
                Text("🎈")
                    .font(Font.custom("PingFang SC", size: 26.51).weight(.medium))
                    .lineSpacing(47.59)
                    .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                    .offset(x: 72.34, y: 19.81)
                    .rotationEffect(.degrees(-28.72))
                Text("🎉")
                    .font(Font.custom("PingFang SC", size: 28.14).weight(.medium))
                    .lineSpacing(50.51)
                    .foregroundColor(Color(red: 0.17, green: 0.17, blue: 0.17))
                    .offset(x: -121.49, y: 1.42)
                    .rotationEffect(.degrees(78.40))
            }
            .frame(width: 271.98, height: 110.98)
            .offset(x: -0.01, y: -2.01)
        }
        .frame(width: 384, height: 313)
        .offset(x: 0, y: 0)
    }
}

#Preview {
    HappyWoman()
}
