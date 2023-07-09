//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: MockData.frameworks[0])
            FrameworkDetailView(description: MockData.frameworks[0].description,
                                frameworkURL: MockData.frameworks[0].urlString)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkDetailView: View {
    let description: String
    let frameworkURL: String
    
    var body: some View {
        VStack {
            Text(description)
                .padding()
            Spacer()
            Button {
//                Link("", destination: URL(string: frameworkURL)!)
            } label: {
                Text("Learn More")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60)
                    .background(.red)
                    .cornerRadius(10)
            }
        }
    }
}
