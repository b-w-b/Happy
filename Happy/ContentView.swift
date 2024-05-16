//
//  ContentView.swift
//  Happy
//
//  Created by Herb on 2024/5/15.
//

import SwiftUI

extension Image {
  init(resource name: String, ofType type: String) {
    guard let path = Bundle.main.path(forResource: name, ofType: type),
          let image = UIImage(contentsOfFile: path) else {
      self.init(name)
      return
    }
    self.init(uiImage: image)
  }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello World")
                            NavigationLink(destination: AllHappyView()) {
                                Text("Do Something")
                            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
