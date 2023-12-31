//
//  Framework.swift
//  Apple-Frameworks
//
//  Created by Dr Cpt Blackbeard on 7/9/23.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}
