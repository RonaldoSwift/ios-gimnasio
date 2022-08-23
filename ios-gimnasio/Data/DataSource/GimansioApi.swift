//
//  GimansioApi.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/08/22.
//

import Foundation

protocol GimnasioApi {
    
    func getBrands(getBrandsRequest: GetBrandsRequest) async throws -> [GetBrandsResponse]
    
}
