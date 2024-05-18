//
//  UploadView.swift
//  Happy
//
//  Created by Herb on 2024/5/17.
//

import SwiftUI

struct UploadView: View {
    var body: some View {
        HStack (){
            UploadLeftView()
                .frame(maxWidth: 220)
                .padding()
            Divider()
            MiddlePanelView()
                .frame(maxWidth: 398)
            RightPanel()
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    UploadView().previewInterfaceOrientation(.portrait)
}
