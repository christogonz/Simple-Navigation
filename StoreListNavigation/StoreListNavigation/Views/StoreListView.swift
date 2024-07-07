//
//  StoreListView.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-06.
//


import SwiftUI

struct StoreListView: View {
    let chain: RetailChainModel
    var storeLocations: [StoreLocationModel]

    // Inicializador para StoreListView
    init(chain: RetailChainModel) {
        self.chain = chain
        // Filtra las ubicaciones de las tiendas para incluir solo las que pertenecen a la cadena especificada
        self.storeLocations = StoreDatabase.storeLocations.filter { $0.chain == chain.name }
    }
    
    var body: some View {
        List(storeLocations, id: \.id) { storeLocation in
            NavigationLink(destination: StoreView(store: storeLocation)) {
                Text("\(chain.name) \(storeLocation.location)")
            }
        }
        .navigationTitle("\(chain.name) Locations")
    }
}

// Preview
struct StoreListView_Previews: PreviewProvider {
    static var previews: some View {
        StoreListView(chain: RetailChainModel(name: "Elgiganten"))
    }
}






//import SwiftUI
//
//// MARK: La vista que muestra las tiendas de una cadena específica.
//
//struct StoreListView: View {
//    let chain: RetailChainModel
//    let storeLocations: [StoreLocationModel]
//    
//// Inicializador para StoreListView
//    init(chain: RetailChainModel) {
//// Asigna el valor de la cadena de tiendas a la propiedad chain
//        self.chain = chain
//        
//// Filtra las ubicaciones de las tiendas para incluir solo las que pertenecen a la cadena especificada
//        self.storeLocations = StoreDatabase.storeLocations.filter { $0.chain == chain.name }
//    }
//    
//    var body: some View {
//        List {
//            ForEach(storeLocations) { store in
//                NavigationLink(value: store) {
//                    Text("\(chain.name) \(store.location)")
//                }
//            }
//        }
//        .navigationTitle("\(chain.name) Locations")
//        .navigationDestination(for: StoreLocationModel.self) {store in
//            StoreView(store: store)
//        }
//    }
//}
//
//#Preview {
//    StoreListView(chain: RetailChainModel(name: "Elgiganten"))
//}
