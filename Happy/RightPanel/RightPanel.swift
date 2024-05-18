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
            TagCloudView(tags: ["打喷嚏","恶心","呕吐","畏声","憋喘","畏光","便秘","腹泻","腹部不适", "反酸/烧心", "胀气","关节发热与肿胀","夜间抽筋","夜间盗汗","关节疼痛", "腿部肿胀","未摄入水果蔬菜","进食量减少","摄入高油脂食品","跳过正餐","不规律饮食"])
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
