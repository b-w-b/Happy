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
                TagCloudView(tags: ["打喷嚏","恶心","呕吐","畏声","憋喘","畏光","便秘","腹泻","腹部不适", "反酸/烧心", "胀气","关节发热与肿胀","夜间抽筋","夜间盗汗","关节疼痛", "腿部肿胀","未摄入水果蔬菜","进食量减少","摄入高油脂食品","跳过正餐","不规律饮食"])
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
