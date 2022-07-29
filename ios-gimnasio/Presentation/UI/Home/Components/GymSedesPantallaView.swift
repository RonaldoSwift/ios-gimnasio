//
//  GymSedesPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct GymSedesPantallaView: View {
    
    let onButtonHelloClick: () -> Void
    
    var body: some View {
        
        Button {
            onButtonHelloClick()
        } label: {
            Text("Sedes de Gimnasios")
                .background(Color.red)
        }.navigationBarTitle(Text("Sedes"), displayMode: .inline)
        
    }
}

struct GymSedesPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        GymSedesPantallaView {
            
        }
    }
}
