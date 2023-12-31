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
            DismissButton(isShowingModal: $isShowingDetailView)

            Spacer()
            FrameworkTitleView(framework: framework)
            FrameworkDetailView(framework: framework)
            
            Link(destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
            
//            Button {
//                isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
//            .tint(.red)
        }
//        .fullScreenCover(isPresented: $isShowingSafariView,
//               content: { SafariView(url: URL(string: framework.urlString)!)
//        })
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
