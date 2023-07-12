//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import SwiftUI

// OO allows our object to publish/broadcast information
// We need to update the appropriate views to listen to these changes
// Make it final since we're not going to deal with inheritence
final class FrameworkGridViewModel: ObservableObject {
    
    // Make it optional b/c no initial value
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    // Our grid view needs to listen to changes here
    // @Published allows us to listen for changes
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
