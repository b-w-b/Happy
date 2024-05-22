import SwiftUI

struct MyTimePicker: View {
    @Binding var isDatePickerVisible : Bool
    @Binding var dateString : String
    @State private var selectedTime = Date()

    var body: some View {
        VStack {
            DatePicker("Select a Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
                .padding()
            Button("完成") {
                isDatePickerVisible = false
                dateString = formatTime(selectedTime)
            }
        }
        .background(.white)
        .padding()
        .cornerRadius(4)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .inset(by: 0.50)
                    .stroke( Color(red: 0.49, green: 0.49, blue: 0.49), lineWidth: 0.50)
            )
    }

    func formatTime(_ time: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: time)
    }
}

struct MyTimePicker_Previews: PreviewProvider {
    static var previews: some View {
        @State var showDialog = false
        @State var str = ""
        MyTimePicker(isDatePickerVisible:$showDialog, dateString: $str)
    }
}
