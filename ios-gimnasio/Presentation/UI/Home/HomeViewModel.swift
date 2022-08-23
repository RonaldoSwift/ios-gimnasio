//
//  HomeViewModel.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 28/07/22.
//

import Foundation

@MainActor
class HomeViewModel: ObservableObject {
    
    private var galwaysRepository: GalwaysBusRepository = GalwaysBusRepository()
    
    //Brands
    @Published var brands: [Brand] = []
    
    
    @Published var name: String = "carlos"
    @Published var mostrarSedes: Bool = false
    
    @Published private(set) var listStops: [BusStop] = []

    
    func fetch() async {
        let nearestStops = await galwaysRepository.fetchNearestStops()
        self.listStops = nearestStops
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func actualizarMostrarSedes(mostrarSedes: Bool) {
        self.mostrarSedes = mostrarSedes
    }
    
    func getBrands() async {
        brands = await galwaysRepository.getBrands()
    }
    
}
