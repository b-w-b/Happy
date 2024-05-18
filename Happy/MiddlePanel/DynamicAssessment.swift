import SwiftUI

struct DynamicAssessment: View {
    @State var selected :Bool = false
    var body: some View {
        ZStack() {
            VStack(spacing: 20) {
                ZStack() {
                    Image(resource: selected ? "dynamicassessment_on" : "dynamicassessment", ofType: "svg")
                        .frame(width: 55, height: 55.66)
                        .offset(x: 0, y: 2.10)
                }
                .frame(width: 55, height: 59.86)
                Text("动态评估任务")
                    .font(Font.custom("PingFang SC", size: 18).weight(.semibold))
                    .lineSpacing(21.60)
                    .foregroundColor(selected ? Color(red: 0.19, green: 0.55, blue: 0.91) : Color(red: 0.33, green: 0.33, blue: 0.33))
            }
            .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
            .frame(width: 191, height: 160)
            .background(Color(red: 0.97, green: 0.97, blue: 0.97))
            .cornerRadius(6)
            .offset(x: 0, y: 0)
            .shadow(
                color: Color(red: 0.73, green: 0.73, blue: 0.73, opacity: 0.18), radius: 12, x: 4, y: 4
            )
        }
        .frame(width: 191, height: 160)
        .shadow( color: selected ? Color(red: 0.19, green: 0.55, blue: 0.91,opacity: 1):
                .white, radius: 5
        ).onTapGesture {
            selected = !selected
        }
    }
}

struct DynamicAssessment_Previews: PreviewProvider {
    static var previews: some View {
        DynamicAssessment()
    }
}
