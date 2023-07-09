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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                print("")
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .padding(.top, 15)
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // shrink if needed
                .minimumScaleFactor(0.6) // but only shrink by 60%
        }
        .padding()
    }
}
