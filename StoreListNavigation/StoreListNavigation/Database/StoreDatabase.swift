//
//  StoreDatabase.swift
//  StoreListNavigation
//
//  Created by Christopher Gonzalez on 2024-07-06.
//

import SwiftUI

struct StoreDatabase {
    static let retailChains: [RetailChainModel] = [
        RetailChainModel(name: "Elgiganten"),
        RetailChainModel(name: "PhoneHouse"),
        RetailChainModel(name: "Telia"),
        RetailChainModel(name: "Tele2"),
        RetailChainModel(name: "Telenor")
    ]
    
    
    static let storeLocations: [StoreLocationModel] = [
        StoreLocationModel(chain: "Elgiganten", location: "Bromma"),
        StoreLocationModel(chain: "Elgiganten", location: "Barkarby"),
        StoreLocationModel(chain: "Elgiganten", location: "Häggvik"),
        
        StoreLocationModel(chain: "PhoneHouse", location: "Bromma"),
        StoreLocationModel(chain: "PhoneHouse", location: "Barkarby"),
        StoreLocationModel(chain: "PhoneHouse", location: "Häggvik"),
        
        StoreLocationModel(chain: "Telia", location: "Bromma"),
        StoreLocationModel(chain: "Telia", location: "Barkarby"),
        StoreLocationModel(chain: "Telia", location: "Häggvik"),
        
        StoreLocationModel(chain: "Tele2", location: "Bromma"),
        StoreLocationModel(chain: "Tele2", location: "Barkarby"),
        StoreLocationModel(chain: "Tele2", location: "Häggvik"),
        
        StoreLocationModel(chain: "Telenor", location: "Bromma"),
        StoreLocationModel(chain: "Telenor", location: "Barkarby"),
        StoreLocationModel(chain: "Telenor", location: "Häggvik")
    ]
}
