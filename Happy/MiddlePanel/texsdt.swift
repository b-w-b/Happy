import SwiftUI

struct ContentView1: View {
    @State private var selectedTime = Date()

    var body: some View {
        VStack {
            Text("选择时间")
                .font(.title)

            DatePicker(
                "时间",
                selection: $selectedTime,
                displayedComponents: .hourAndMinute
            )
            .datePickerStyle(WheelDatePickerStyle()) // or use .compact for a different style
            .labelsHidden()
            .frame(maxWidth: 150, maxHeight: 150)
            .clipped()
            Text("Selected Time: \(formattedTime)")
                            .padding()
        }
        .border(.red)
        .padding()
       
    }

    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: selectedTime)
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
