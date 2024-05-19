import SwiftUI

struct ContentView11: View {
    var body: some View {
        TabView {
            MainTabView(title: "Home", items: Array(1...20))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            MainTabView(title: "Search", items: Array(21...40))
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            MainTabView(title: "Profile", items: Array(41...60))
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

struct MainTabView: View {
    let title: String
    let items: [Int]

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()

            TabView {
                SubTabView(title: "\(title) Subtab 1", items: items)
                    .tabItem {
                        Text("Subtab 1")
                    }
                
                SubTabView(title: "\(title) Subtab 2", items: items.reversed())
                    .tabItem {
                        Text("Subtab 2")
                    }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        }
    }
}

struct SubTabView: View {
    let title: String
    let items: [Int]
    
    @State private var scrollViewID = UUID()

    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(items, id: \.self) { item in
                        Text("\(title) Item \(item)")
                            .font(.title)
                            .padding()
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                    }
                }
                .padding()
                .id(scrollViewID)
            }
            .onAppear {
                scrollViewProxy.scrollTo(scrollViewID, anchor: .top)
            }
        }
    }
}

struct ContentView11_Previews: PreviewProvider {
    static var previews: some View {
        ContentView11()
    }
}
