import SwiftUI

struct SelectTaskMonitor: View {
    @State private var scrollViewID = UUID()
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView () {
                VStack(alignment: .leading, spacing: 16) {
                    Text("01 请您先了解本次任务涉及的方面（下方所示）。")
                        .font(Font.custom("Inter", size: 18).weight(.medium))
                        .italic()
                    Text("02 请您以老人熟悉的方式描述任务内容，并选择您观察到的结果。")
                        .lineLimit(2)
                        .italic()
                        .font(Font.custom("Inter", size: 18).weight(.medium))
                    VStack(alignment: .leading, spacing: 13) {
                        Listening()
                        DailyLife()
                        Speaking()
                        Space()
                    }
                }
                .id(scrollViewID)
            }
            .onAppear {
                print("onAppear")
                //scrollViewProxy.scrollTo(scrollViewID, anchor: .top)
            }
        }
    }
}

struct SelectTaskMonitor_Previews: PreviewProvider {
    static var previews: some View {
        SelectTaskMonitor()
    }
}
