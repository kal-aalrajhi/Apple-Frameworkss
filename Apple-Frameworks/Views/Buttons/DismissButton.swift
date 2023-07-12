//
//  DismissButton.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/11/23.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowingModal: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingModal = false
            } label: {
                Image(systemName: "x.circle.fill")
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        // Because its a binding we pass in .constant
        DismissButton(isShowingModal: .constant(false))
    }
}
