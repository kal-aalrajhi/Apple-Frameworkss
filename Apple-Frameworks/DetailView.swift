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
            FrameworkTitleView(framework: MockData.frameworks[0])
            VStack {
                Text(MockData.frameworks[0].description)
                Spacer()
                Button {
                    // Do something
                } label: {
                    Text("Learn More")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(.red)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .preferredColorScheme(.dark)
    }
}
