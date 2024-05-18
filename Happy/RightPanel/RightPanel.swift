//
//  RightPanel.swift
//  Happy
//
//  Created by Herb on 2024/5/18.
//

import SwiftUI

struct SecondViewModifier: ViewModifier {
    var showSecondView :Int?
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func applySecondViewModifier(_ showSecondView :Int?) -> some View {
        print("modified, showSecondView: ", showSecondView ?? "nil")
        return self.modifier(SecondViewModifier(showSecondView: showSecondView))
    }
}

struct RightPanel: View {
    var showSecondView :Int?
    var body: some View {
        switch showSecondView {
        case .none:
            PleaseSelect()
        case .some(let value):
            switch value {
            case 1:
                SelectSympton()
            case 2:
                SelectBloodPressure()
            case 3:
                SelectTask()
            default:
                PleaseSelect()
            }
        }
    }
}

#Preview {
    RightPanel()
}
