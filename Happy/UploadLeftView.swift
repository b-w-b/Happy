import SwiftUI

struct UploadLeftView: View {
  var body: some View {
    VStack() {
        HStack() {
          Image(resource: "chenqiuping", ofType: "svg")
              .frame(maxWidth: 76, maxHeight: 76)
          Rectangle()
              .foregroundColor(.clear)
              .frame(maxWidth: .infinity, maxHeight: 76)
        }.padding(10)
        HStack() {
          Text("陈秋萍")
              .font(Font.custom("PingFang SC", size: 24).weight(.semibold))
              .frame(height: 25)
          Rectangle()
              .foregroundColor(.clear)
              .frame(maxHeight: 25)
              .padding(10)
        }.padding(10)
        Rectangle()
            .foregroundColor(.clear)
            .frame(maxHeight: 100)
        HStack() {
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: 40)
            VStack() {
                MyRecent()
                INeedUpload()
                SmartMonitor()
            }
        }
        Rectangle()
            .foregroundColor(.clear)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        HStack() {
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: 20)
            VStack(alignment: .leading) {
               ExportReport()
               SwitchUser()
               Quit()
            }
        }
        
    }
    .frame(maxWidth: 220)
   
  }
}

struct UploadLeftView_Previews: PreviewProvider {
  static var previews: some View {
      UploadLeftView().previewInterfaceOrientation(.landscapeLeft)
  }
}
