//
//  DatePicker.swift
//  Happy
//
//  Created by Herb on 2024/5/21.
//

import SwiftUI

struct MyDatePicker: View {
    @Binding var isDatePickerVisible : Bool
    @Binding var dateString : String
    @State private var selectedDate = Date()
    var body: some View {
        VStack() {
            DatePicker("Select a Date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
                .frame(height: 300)
                .environment(\.locale, Locale(identifier: "zh"))
            
            Button("完成") {
                isDatePickerVisible = false
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd"
                dateString = dateFormatter.string(from: selectedDate)
            }
            
            .padding()
        }
        .background(.white)
        .cornerRadius(4)
        .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .inset(by: 0.50)
                    .stroke( Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
            )
    }
}

struct MyDatePicker_Previews: PreviewProvider {
    
    static var previews: some View {
        @State var showDialog = false
        @State var str = ""
        MyDatePicker(isDatePickerVisible: $showDialog, dateString: $str)
    }
}
