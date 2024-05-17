//
//  MiddlePanelView.swift
//  Happy
//
//  Created by Herb on 2024/5/17.
//

import SwiftUI

struct MiddlePanelView: View {
    var body: some View {
        VStack() {
            Recording()
            HowYourFeeling()
            UploadFeeling()
            HStack(){
                AddSympton()
                    .padding(10)
                BloodPressure()
                    .padding(10)
            }
            HStack() {
                DynamicAssessment()
                    .padding(10)
                UploadMore()
                    .padding(10)
            }
        }
    }
}

#Preview {
    MiddlePanelView()
}
