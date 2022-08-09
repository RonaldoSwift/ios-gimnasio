//
//  BailePantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI
import MapKit

struct NearMePantalla: View {
    
    let homeViewModel: HomeViewModel
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D.init(
            latitude: 0, longitude: 0
        ),
        latitudinalMeters: 1500,
        longitudinalMeters: 1500
    )
    
    @State private var showSheet = false
    
    // REVISAR DOCUMENTACION PARA USAR MAPANNOTATION https://developer.apple.com/documentation/mapkit/mapannotation
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            interactionModes: MapInteractionModes.all,
            showsUserLocation: true,
            annotationItems: homeViewModel.listStops,
            annotationContent: {(busStop) -> MapMarker in
                let coordinate = CLLocationCoordinate2D(
                    latitude: busStop.latitude,
                    longitude: busStop.longitude
                )
                return MapMarker(coordinate: coordinate, tint: .blue)
            }
        ).task {
            region.center = CLLocationCoordinate2D(
                latitude: -11.969654934673523,
                longitude: -77.00567632208029
            )
            await homeViewModel.fetch()
        }
        .listStyle(PlainListStyle())
        .sheet(
            isPresented: $showSheet,
            onDismiss: { /*cuando el usuario desaparece el modal*/ }) {
                
            }
    }
}

struct BailePantallaView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NearMePantalla(homeViewModel: HomeViewModel())
            NearMePantalla(homeViewModel: HomeViewModel())
        }
    }
}
