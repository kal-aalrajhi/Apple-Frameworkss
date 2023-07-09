//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    //
                } label: {
                    Image(systemName: "x.circle.fill")
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()

            Spacer()
            FrameworkTitleView(framework: framework)
            FrameworkDetailView(framework: framework)
            Button {
                //                Link("", destination: URL(string: frameworkURL)!)
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.frameworks[0])
            .preferredColorScheme(.dark)
    }
}

struct FrameworkDetailView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Text(framework.description)
                .padding()
            Spacer()
        }
    }
}
