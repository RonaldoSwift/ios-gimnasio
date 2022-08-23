//
//  GalwaysBusRepository.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 7/08/22.
//

import Foundation

class GalwaysBusRepository {
    
    private let gimnasioApiImpl = GimnasioApiImpl()
    
    // bus/center polleria -11.969654934673523, -77.00567632208029
    
    func fetchNearestStops() async -> [BusStop] {
        let busStops = [
            BusStop(
                id: "0",
                shortName: "",
                longName: "",
                stopRef: "",
                latitude: -11.967750655284977,
                longitude: -77.00428152896053
            ),
            BusStop(
                id: "0",
                shortName: "",
                longName: "",
                stopRef: "",
                latitude: -11.969140970527766,
                longitude: -77.00511967818196
            ),
            BusStop(
                id: "0",
                shortName: "",
                longName: "",
                stopRef: "",
                latitude: -11.971885930945978,
                longitude: -77.00670487345754
            ),
            BusStop(
                id: "0",
                shortName: "",
                longName: "",
                stopRef: "",
                latitude: -11.974862577286663,
                longitude: -77.00885490842902
            )
        ]
        return busStops
    }
    
    func getBrands() async -> [Brand] {
        do {
            let brandsResponse = try await gimnasioApiImpl.getBrands(
                getBrandsRequest: GetBrandsRequest(name: "", imageCode: 0)
            )
            let brands = brandsResponse.map { getBrandsResponse in
                Brand(
                    id: getBrandsResponse.id,
                    title: getBrandsResponse.name,
                    image: Assets.Registro.brand_megaforce.image
                )
            }
            return brands
        } catch {
            print("Oops!")
            return []
        }
    }
}
