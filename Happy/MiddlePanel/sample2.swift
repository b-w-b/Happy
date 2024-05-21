import SwiftUI

struct ContentView12: View {
    @State private var selectedTime = Date()

    var body: some View {
        VStack {
            Text("选择时间:")
                .font(.headline)
            
            Text(formatTime(selectedTime))
                .font(.subheadline)
                .padding()

            DatePicker("Select a Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                .datePickerStyle(WheelDatePickerStyle())
                .labelsHidden()
                .padding()
        }
        .padding()
    }

    func formatTime(_ time: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: time)
    }
}

struct ContentView12_Previews: PreviewProvider {
    static var previews: some View {
        ContentView12()
    }
}
