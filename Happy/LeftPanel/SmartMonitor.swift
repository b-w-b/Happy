import SwiftUI

struct SmartMonitor: View {
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(resource: "smartmonitor", ofType: "svg")
            Text("智能监测")
                .font(Font.custom("PingFang SC", size: 20).weight(.medium))
                .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
        }
        .padding(4)
        .frame(width: 200, height: 30.50)
        .cornerRadius(2);
    }
}

struct SmartMonitor_Previews: PreviewProvider {
    static var previews: some View {
        SmartMonitor()
    }
}
