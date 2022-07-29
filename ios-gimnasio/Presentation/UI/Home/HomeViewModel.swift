//
//  HomeViewModel.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 28/07/22.
//

import Foundation

@MainActor
class HomeViewModel: ObservableObject {
    
    @Published var name: String = "carlos"
    @Published var mostrarSedes: Bool = false
    
    func setName(name: String) {
        self.name = name
    }
    
    func actualizarMostrarSedes(mostrarSedes: Bool) {
        self.mostrarSedes = mostrarSedes
    }
    
}
