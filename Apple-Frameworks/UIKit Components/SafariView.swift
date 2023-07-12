//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/10/23.
//

import SwiftUI
import SafariServices
/**
 In summary, this code is a way to display a web page in a SwiftUI app. You create a SafariView with a URL, and then you can use that view in your SwiftUI interface. When the SafariView appears, it will display the web page at the URL you provided.
 */

/**
 Here, a new struct SafariView is being defined that conforms to the UIViewControllerRepresentable protocol. This protocol is a way of bridging UIKit view controllers into SwiftUI. Any struct that conforms to this protocol can be used as a SwiftUI view.
 */

struct SafariView: UIViewControllerRepresentable {
    // This is a property of the SafariView struct. It's the URL that you want to display in the Safari view controller.
    let url: URL
    
    /**
     This is one of two methods you need to implement for the UIViewControllerRepresentable protocol. This method is called when SwiftUI needs to create the UIKit view controller. Here, it's creating an instance of SFSafariViewController with the provided URL.
     */
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    /**
     This is the second method you need to implement for the UIViewControllerRepresentable protocol. This method is called when the SwiftUI view's properties have changed and the UIKit view controller needs to update its state to reflect those changes. In this case, there are no properties that can change after the view controller is created, so the method is empty.
     */
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
