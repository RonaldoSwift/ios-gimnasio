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
        latitudinalMeters: 500,
        longitudinalMeters: 500
    )
    
    
    var body: some View {
        
        Map(coordinateRegion: $region)
        
        
    }
}

struct BailePantallaView_Previews: PreviewProvider {
    static var previews: some View {
        NearMePantalla(homeViewModel: HomeViewModel())
    }
}
