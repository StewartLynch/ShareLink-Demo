//
//  WineView.swift
//  ShareLink Demo
//
//  Created by Stewart Lynch on 2022-09-26.
//

import SwiftUI


struct WineView: View {
    let wine = Wine.sample
    @State private var renderedImage: Image?
    var body: some View {
        NavigationStack{
            VStack {
                WineLabel(wine: wine)
                    .onAppear {
                        let renderer = ImageRenderer(content: WineLabel(wine: wine))
                        renderer.scale = 3
                        if let image = renderer.cgImage {
                            renderedImage = Image(decorative: image, scale: 1.0)
                        }
                    }
                if let renderedImage {
                    ShareLink("Share Label as Image",
                              item: renderedImage,
                              subject: Text(wine.winery),
                              message: Text("Enjoy the wine"),
                              preview: SharePreview(wine.label, image: renderedImage))
                }
                Spacer()
            }
            .navigationTitle(wine.winery)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ShareLink(item: wine.labelImage,
                              subject: Text("Wine recommendation"),
                              message: Text(wine.description),
                              preview: SharePreview(Text("\(wine.name) \(wine.variety)"), image: wine.labelImage))
                }
            }
        }
    }
}

struct WineLabel: View {
    let wine: Wine
    var body: some View {
        VStack(alignment: .leading) {
            Text(wine.variety).font(.largeTitle).bold()
            Text(wine.name).font(.title)
            Text("\(wine.flag) \(wine.region)").italic()
            Text(wine.localPrice)
            Text("⭐️ \(wine.rating)")
            wine.labelImage
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 250)
        }
    }
}

struct WineView_Previews: PreviewProvider {
    static var previews: some View {
        WineView()
    }
}
