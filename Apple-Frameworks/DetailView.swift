//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

struct DetailView: View {
    var framework: Framework
    // Binding will copy the state of its parent view
    // the parent is in our gridview
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
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
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView,
               content: { SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(framework: MockData.frameworks[0], isShowingDetailView: .constant(false))
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
