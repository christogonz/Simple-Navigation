//
//  LocationStoreView.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-06.
//

import SwiftUI

struct LocationStoresView: View {
    let location: String
    var storesAtLocation: [StoreLocationModel]
    
    init(location: String) {
        self.location = location
        // Filtra las ubicaciones de las tiendas para incluir solo las que están en la localización especificada
        self.storesAtLocation = StoreDatabase.storeLocations.filter { $0.location == location }
    }
    
    var body: some View {
        List(storesAtLocation, id: \.id) { storeLocation in
            NavigationLink(destination: StoreView(store: storeLocation)) {
                Text("\(storeLocation.chain) \(storeLocation.location)")
            }
        }
        .navigationTitle("\(location) Stores")
    }
}

// Preview
struct LocationStoresView_Previews: PreviewProvider {
    static var previews: some View {
        LocationStoresView(location: "Bromma")
    }
}



//import SwiftUI
//
//// MARK: La vista que muestra todas las tiendas en una localización específica
//
//struct LocationStoresView: View {
//    let location: String
//    let storesAtLocation: [StoreLocationModel]
//    
//    init(location: String) {
//        self.location = location
//        self.storesAtLocation = StoreDatabase.storeLocations.filter { $0.location == location }
//    }
//    
//    var body: some View {
//        List {
//            ForEach(storesAtLocation) { store in
//                NavigationLink(value: store) {
//                    Text("\(store.chain) \(store.location)")
//                }
//            }
//        }
//        .navigationTitle("\(location) Stores")
//        .navigationDestination(for: StoreLocationModel.self) {
//            store in
//                StoreView(store: store)
//        }
//    }
//}
//
//#Preview {
//    LocationStoresView(location: "Bromma")
//}
