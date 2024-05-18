//
//  RightPanel.swift
//  Happy
//
//  Created by Herb on 2024/5/18.
//

import SwiftUI

struct RightPanel: View {
    @State private var showSecondView = 1
    var body: some View {
        switch showSecondView {
        case 1:
            TagCloudView(tags: ["Swift", "SwiftUI", "iOS", "macOS", "tvOS", "watchOS", "Xcode", "OpenAI", "Programming", "Development", "Coding", "Technology"])
        case 2:
            SelectBloodPressure()
        case 3:
            SelectTask()
        case 0:
            PleaseSelect()
        default:
            PleaseSelect()
        }
    }
}

#Preview {
    RightPanel()
}
