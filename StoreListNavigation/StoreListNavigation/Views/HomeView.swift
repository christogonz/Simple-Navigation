////
////  HomeView.swift
////  StoreListNavigation
////
////  Created by Christopher Gonzalez on 2024-07-07.
////
//
import SwiftUI

struct HomeView: View {
    let retailChains = StoreDatabase.retailChains
    let storeLocations = Array(Set(StoreDatabase.storeLocations.map { $0.location })).sorted()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        // Título de la sección de cadenas de tiendas
                        Text("Store Chains")
                            .font(.headline)
                            .foregroundStyle(.accent)
//                            .padding(.top)
                        
                        // Botones para cadenas de tiendas
                        ForEach(retailChains) { chain in
                            NavigationLink(destination: StoreListView(chain: chain)) {
                                Text(chain.name)
                                    .padding(4)
                                    .foregroundStyle(.white)
                                    
                            }
                        }
                        
                        // Título de la sección de localizaciones de tiendas
                        Text("Store Locations")
                            .font(.headline)
                            .padding(.top)
                            .foregroundStyle(.accent)
                        
                        // Botones para localizaciones de tiendas
                        ForEach(storeLocations, id: \.self) { location in
                            NavigationLink(destination: LocationStoresView(location: location)) {
                                Text(location)
                                    .foregroundStyle(.white)
                                    .padding(4)
                            }
                        }
                        
                        // Título y ScrollView horizontal para todas las tiendas
                        Text("All Stores")
                            .font(.headline)
                            .padding(.top)
                            .foregroundStyle(.accent)
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(StoreDatabase.storeLocations) { storeLocation in
                                NavigationLink(destination: StoreView(store: storeLocation)) {
                                    VStack {
                                        Text("\(storeLocation.chain) \(storeLocation.location)")
                                            .foregroundColor(.white)
                                            .font(.headline)
                                            .padding()
                                            .frame(width: 200, height: 150)
                                            .background(Color.accentColor)
                                            .cornerRadius(10)
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding(.horizontal)
                    }
                }
//                .padding()
            }
            .navigationTitle("Stores")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.crop.circle")
                            .font(.title2)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
//
//
//
//
//
//
//
//
//
//
//
//struct HomeView: View {
//    let retailChains = StoreDatabase.retailChains
//    let storeLocations = Array(Set(StoreDatabase.storeLocations.map { $0.location })).sorted()
//    
//    var body: some View {
//        NavigationStack {
//            List {
//                // Sección de nombres de cadenas de tiendas
//                Section("Store Chains") {
//                    ForEach(retailChains) { chain in
//                        NavigationLink(value: chain) {
//                            Text(chain.name)
//                        }
//                    }
//                }
//                .listRowBackground(Color.clear)
//                
//                // Sección de localizaciones de tiendas
//                Section("Store Locations") {
//                    ForEach(storeLocations, id: \.self) { location in
//                        NavigationLink(value: location) {
//                            Text(location)
//                        }
//                    }
//                }
//                .listRowBackground(Color.clear)
//                .listRowInsets(EdgeInsets())
//                
//                // ScrollView horizontal para todas las tiendas
//                Section("All Store") {
//                    ScrollView(.horizontal, showsIndicators: false) {
//                        HStack(spacing: 16) {
//                            ForEach(StoreDatabase.storeLocations) { storeLocation in
//                                NavigationLink(value: storeLocation) {
//                                    VStack {
//                                        Text("\(storeLocation.chain) \(storeLocation.location)")
//                                            .foregroundStyle(.white)
//                                            .font(.headline)
//                                            .padding()
//                                            .frame(minWidth: 200, minHeight: 150)
//                                            .background(Color.accentColor)
//                                            .cornerRadius(10)
//                                    }
//                                }
//                                .buttonStyle(PlainButtonStyle())
//                            }
//                            .padding(.leading, 16)
//                            .padding(.trailing, 16)
//                        }
//                        .padding(.horizontal, -20)
//                        
//                    }
//                }
//                
//                .listRowBackground(Color.clear)
//            }
//            
//            .navigationTitle("Stores")
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    NavigationLink(destination: SettingsView()) {
//                        Image(systemName: "gear")
//                            .font(.title2)
//                    }
//                }
//                
//                ToolbarItem(placement: .topBarTrailing) {
//                    NavigationLink(destination: ProfileView()) {
//                        Image(systemName: "person.crop.circle")
//                            .font(.title2)
//                    }
//                }
//            }
//            .navigationDestination(for: RetailChainModel.self) { chain in
//                StoreListView(chain: chain)
//            }
//            .navigationDestination(for: String.self) { location in
//                LocationStoresView(location: location)
//            }
//            .navigationDestination(for: StoreLocationModel.self) { storeLocation in
//                StoreView(store: storeLocation)
//            }
//        }
//    }
//}
//
//#Preview {
//    HomeView()
//        .preferredColorScheme(.dark)
//}
