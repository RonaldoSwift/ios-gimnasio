//
//  Section.swift
//  ios-gimnasio
//
//  Created by Ronaldo Andre Vargas Huaman on 26/07/22.
//

import Foundation
import SwiftUI

struct Section: Identifiable{
    let id: Int
    let titulo: String
    let subTitulo: String
    let imagenes: Array<String> 
    let color: Color
    let anchoDeImagenes: CGFloat
    let altoDeImagen: CGFloat
}
