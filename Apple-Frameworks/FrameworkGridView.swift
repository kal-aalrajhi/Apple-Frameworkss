//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    // We're dealing with a class, we don't need to destroy/recreate (so we are not going to use @State)
    // @StateObject allows us to hold state
    @StateObject var viewModelClass = FrameworkGridViewModel()
    
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
                                viewModelClass.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .padding(.top, 15)
            .sheet(isPresented: $viewModelClass.isShowingDetailView) {
                DetailView(framework: viewModelClass.selectedFramework ?? MockData.frameworks[0],
                           isShowingDetailView: $viewModelClass.isShowingDetailView)
            }
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
