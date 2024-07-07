//
//  Models.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-06.
//

import SwiftUI

struct RetailChainModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

struct StoreLocationModel: Identifiable, Hashable {
    let id = UUID()
    let chain: String
    let location: String
}

