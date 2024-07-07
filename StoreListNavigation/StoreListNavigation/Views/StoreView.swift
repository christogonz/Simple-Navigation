//
//  StoreView.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-06.
//

import SwiftUI

struct StoreView: View {
    let store: StoreLocationModel
    
    var body: some View {
        VStack {
            Text(store.chain)
            Text(store.location)
                .font(.largeTitle)
                .padding()
        }
        .navigationTitle(store.location)
    }
}

#Preview {
    StoreView(store: StoreLocationModel(chain: "Elgiganten", location: "Bromma"))
}
