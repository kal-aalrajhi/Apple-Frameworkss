//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            Image("arkit")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text("arkit")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // shrink if needed
                .minimumScaleFactor(0.6) // but only shrink by 60%
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
