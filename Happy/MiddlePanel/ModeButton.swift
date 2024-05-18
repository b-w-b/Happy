import SwiftUI

struct SelectedModifier: ViewModifier {
    var isSelected: Bool
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func applyCustomModifier(_ isSelected: Bool) -> some View {
        print("modified, bool: ", isSelected)
        return self.modifier(SelectedModifier(isSelected: isSelected))
    }
}

struct ModeButton: View {
    var onImageFile: String
    var offImageFile: String
    var textLabel: String
    
    var isSelected: Bool
    
    var selectedEvent : () -> Void
    
    var body: some View {
        ZStack() {
            VStack(spacing: 20) {
                ZStack() {
                    Image(resource: isSelected ? onImageFile : offImageFile, ofType: "svg")
                        .frame(width: 55, height: 55.66)
                        .offset(x: 0, y: 2.10)
                }
                .frame(width: 55, height: 59.86)
                Text(textLabel)
                    .font(Font.custom("PingFang SC", size: 18).weight(.semibold))
                    .lineSpacing(21.60)
                    .foregroundColor(
                        isSelected ? Color(red: 0.19, green: 0.55, blue: 0.91) : Color(red: 0.33, green: 0.33, blue: 0.33))
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
        .shadow( color: isSelected ? Color(red: 0.19, green: 0.55, blue: 0.91,opacity: 1):
                .white, radius: 5
        ).onTapGesture {
            if !isSelected {
                selectedEvent()
            }
        }
    }
}

struct ModeButton_Previews: PreviewProvider {
    static var previews: some View {
        ModeButton( onImageFile : "addsympton_on", offImageFile: "addsympton", textLabel : "添加症状与状态", isSelected: false,
                    selectedEvent: {print("ddd")})
    }
}


