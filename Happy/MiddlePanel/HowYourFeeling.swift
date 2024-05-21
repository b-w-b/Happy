import SwiftUI

struct HowYourFeeling: View {
    @State private var text: String = ""
    @State private var showDialog = false
    var body: some View {
        ZStack{
            VStack{
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $text)
                        .multilineTextAlignment(.leading)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity) // Adjust size as needed
                        .background(.white)
                        .cornerRadius(6)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .inset(by: 1)
                                .stroke(Color(red: 0.19, green: 0.55, blue: 0.91), lineWidth: 1)
                        )
                    if text.isEmpty {
                        Text("陈女士，您感觉如何呢？")
                            .foregroundColor(.gray)
                            .padding(.top, 8)
                            .padding(.leading, 3)
                            .background(.clear)
                    }
                }.padding()
                
                HStack(spacing: 10) {
                    Image(resource: "upload1", ofType: "svg")
                    Text("上传")
                        .font(Font.custom("PingFang SC", size: 18).weight(.medium))
                        .lineSpacing(21.60)
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
                .frame(width: 398, height: 60)
                .background(
                    text.isEmpty ?
                    Color(red: 0.55, green: 0.55, blue: 0.55)
                    :
                        Color(red: 0.19, green: 0.55, blue: 0.91)
                )
                .cornerRadius(6)
                .onTapGesture {
                    if showDialog == false {
                        showDialog.toggle()
                    }
                }
            }
            if showDialog {
                UploadSuccess(showDialog: $showDialog)
                    .frame(width: 300, height: 200)
                    .transition(.scale)
            }
        }

    }
}

struct HowYourFeeling_Previews: PreviewProvider {
    static var previews: some View {
        HowYourFeeling()
    }
}
