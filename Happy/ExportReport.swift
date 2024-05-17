import SwiftUI

struct ExportReport: View {
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Image(resource: "download", ofType: "svg")
      Text("导出报告")
        .font(Font.custom("PingFang SC", size: 20).weight(.medium))
        .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
        Rectangle().foregroundColor(.clear).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
    .padding(4)
    .frame(width: 200, height: 30.50)
    .cornerRadius(2);
  }
}

struct ExportReport_Previews: PreviewProvider {
  static var previews: some View {
      ExportReport()
  }
}
