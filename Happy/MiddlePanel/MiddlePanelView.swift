//
//  MiddlePanelView.swift
//  Happy
//
//  Created by Herb on 2024/5/17.
//

import SwiftUI

struct MiddlePanelView: View {
    @State private var selectedButton: Int? = nil
    
    var body: some View {
        HStack() {
            VStack() {
                Recording()
                HowYourFeeling()
                UploadFeeling()
                HStack(){
                    ModeButton(
                        onImageFile : "addsympton_on",
                        offImageFile: "addsympton",
                        textLabel : "添加症状与状态",
                        isSelected: selectedButton != nil && selectedButton == 1, selectedEvent:  {
                            print("SmartMonitor 1 tapped!")
                            selectedButton = 1}
                    )
                    .applyCustomModifier(selectedButton != nil && selectedButton == 1)
                    .padding(10)
                    
                    ModeButton(
                        onImageFile : "bloodpressure_on",
                        offImageFile: "bloodpressure",
                        textLabel : "添加血压数据",
                        isSelected: selectedButton != nil && selectedButton == 2, selectedEvent:  {
                            print("SmartMonitor 2 tapped!")
                            selectedButton = 2}
                    )
                    .applyCustomModifier(selectedButton != nil && selectedButton == 2)
                    .padding(10)
                }
                HStack() {
                    ModeButton(
                        onImageFile : "dynamicassessment_on",
                        offImageFile: "dynamicassessment",
                        textLabel : "动态评估任务",
                        isSelected: selectedButton != nil && selectedButton == 3, selectedEvent:  {
                            print("SmartMonitor 3 tapped!")
                            selectedButton = 3}
                    )
                    .applyCustomModifier(selectedButton != nil && selectedButton == 3)
                    .padding(10)
                    ModeButton(
                        onImageFile : "uploadmoreinfo",
                        offImageFile: "uploadmoreinfo",
                        textLabel : "上传更多信息",
                        isSelected: selectedButton != nil && selectedButton == 4, selectedEvent:  {
                            print("SmartMonitor 4 tapped!")
                            selectedButton = 4}
                    )
                    .applyCustomModifier(selectedButton != nil && selectedButton == 4)
                    .padding(10)
                }
            }
            .frame(maxWidth: 398)
            RightPanel(showSecondView: selectedButton)
                .applySecondViewModifier(selectedButton)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    MiddlePanelView()
}
