//
// Created for ShareLink Demo
// by Stewart Lynch on 2022-09-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct BasicsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                ShareLink(item: "String Item")
//                ShareLink(item: URL(string: "https://www.createchsol.com")!)
                ShareLink("Some Text",
                          item: "String Item")
                ShareLink(Text("\(Image(systemName: "plus.circle.fill")) - WIth SFImage"),
                          item: "String Item")
                ShareLink("Item Subject - No Preview",
                          item: "String Item",
                          subject: Text("Subject"))
                ShareLink("Item Subject Message",
                          item: "String Item",
                          subject: Text("Subject"),
                          message: Text("The Message"))
                ShareLink("Url Item Subject Message",
                          item: URL(string: "https://www.createchsol.com")!,
                          subject: Text("Subject"),
                          message: Text("The Message"))
                ShareLink(item: "String Item",
                          subject: Text("A Subject"),
                          message: Text("The Message")) {
                    HStack {
                        Image("Label")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                        Text("Share it")
                    }
                }
                ShareLink("Item Message",
                          item: "String Item",
                          message: Text("The Message"))
                Spacer()
            }
            .font(.title)
            .padding()
            .navigationTitle("ShareLinks Basics")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ShareLink("Share",
                              item: "Some Text")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicsView()
    }
}
















