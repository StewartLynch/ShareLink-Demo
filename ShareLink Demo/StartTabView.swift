//
// Created for ShareLink Demo
// by Stewart Lynch on 2022-09-27
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct StartTabView: View {
    var body: some View {
        TabView() {
            BasicsView()
                .tabItem {
                    Label("The Basics", systemImage: "1.circle.fill")
                }
            
            WineView()
                .tabItem {
                    Label("Wine Label", systemImage: "2.circle.fill")
                }
        }
    }
}

struct StartTabView_Previews: PreviewProvider {
    static var previews: some View {
        StartTabView()
    }
}
