import SwiftUI

struct TagCloudView: View {
    let tags: [String]
    @State private var totalHeight = CGFloat.zero       // Tracks total height of all tags
    @State private var currentRowHeight = CGFloat.zero  // Tracks current row height
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { geometry in
                self.generateContent(in: geometry)
            }
        }
        .frame(height: totalHeight)
    }
    
    private func generateContent(in geometry: GeometryProxy) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero
        var selectedheight = CGFloat.zero
        
        return ZStack(alignment: .topLeading) {
            ForEach(tags, id: \.self) { tag in
                self.tagView(for: tag)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading, computeValue: { dimension in
                        if (abs(width - dimension.width) > geometry.size.width) {
                            width = 0
                            height -= selectedheight
                            selectedheight = 0
                        }
                        
                        if dimension.height > selectedheight {
                            selectedheight = dimension.height
                        }
                        
                        let result = width
                        if tag == self.tags.last! {
                            width = 0 // Last item
                            selectedheight  = 0
                        } else {
                            width -= dimension.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: { _ in
                        let result = height
                        if tag == self.tags.last! {
                            height = 0 // Last item
                        }
                        return result
                    })
            }
        }
        .background(viewHeightReader(height: $totalHeight))
    }
    
    private func tagView(for text: String) -> some View {
        selectedLabel{Text(text)}
    }
}

private struct selectedLabel<Content: View>: View {
    @ViewBuilder let content: Content
    @State var selected : Bool = false
    var body: some View {
        
        VStack() {
            content.padding(.horizontal, 12)
                .padding(.vertical, 8)
                .frame(width: 141)
                .background(selected ? Color.blue : Color.white)
                .foregroundColor(selected ? .white : .gray)
                .cornerRadius(14)
                .font(.system(size: 16, weight: .medium))
                .border(selected ? .white : .black)
                .onTapGesture {
                    selected = !selected
                }
            if selected {
                TagCount()
            }
        }
        ZStack() {
            if selected {
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.blue)
                    .background(.clear)
                    .cornerRadius(6)
                    .offset(x: -25, y: -5)
                    .onTapGesture {
                        selected = !selected
                    }
                Rectangle()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.clear)
                    .background(.white)
                    .cornerRadius(6)
                    .offset(x: -25, y: -5)
                    .onTapGesture {
                        selected = !selected
                    }
                Image(resource: "close", ofType: "svg")
                    .offset(x: -25, y: -5)
                    .onTapGesture {
                        selected = !selected
                    }
            }
        }
    }
}


private struct viewHeightReader: View {
    @Binding var height: CGFloat
    
    var body: some View {
        GeometryReader { geometry -> Color in
            DispatchQueue.main.async {
                self.height = geometry.size.height
            }
            return Color.clear
        }
    }
}

struct SelectChanges_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            TagCloudView(tags: ["打喷嚏","恶心","呕吐","畏声","憋喘","畏光","便秘","腹泻","腹部不适", "反酸/烧心", "胀气","关节发热与肿胀","夜间抽筋","夜间盗汗","关节疼痛", "腿部肿胀","未摄入水果蔬菜","进食量减少","摄入高油脂食品","跳过正餐","不规律饮食"])
        }
    }
}
