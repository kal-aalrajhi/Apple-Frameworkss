//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

struct FrameworkGridView: View {
    // Three Columns
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(name: "arkit", imageName: "arkit")
            FrameworkTitleView(name: "arkit", imageName: "arkit")
            FrameworkTitleView(name: "arkit", imageName: "arkit")
            FrameworkTitleView(name: "arkit", imageName: "arkit")
            FrameworkTitleView(name: "arkit", imageName: "arkit")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(imageName)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // shrink if needed
                .minimumScaleFactor(0.6) // but only shrink by 60%
        }
    }
}
