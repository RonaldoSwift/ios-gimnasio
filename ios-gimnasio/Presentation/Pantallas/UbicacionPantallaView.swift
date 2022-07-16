//
//  UbicacionPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct UbicacionPantallaView: View {
    var body: some View {
        VStack{
            Text("GYM")
            
            HStack{
                Image(systemName: "arrowtriangle.down.fill")
                Text("UBICACION")
            }
            
            Text("Gimnacio Mega Force Hacienda")
            HStack{
                Text("4.1")
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.gray)
                Spacer()
                Image(systemName: "circle.grid.2x1.left.filled")

            }
            HStack{
                Image("MG")
                Image("")
                Image("")
            }
            
            Text("Gimnacio Mega Force Hacienda")
            HStack{
                Text("4.1")
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.gray)
                Spacer()
                Image(systemName: "circle.grid.2x1.left.filled")

            }
            HStack{
                Image("MG")
                Image("")
                Image("")
            }
        }
        .padding()
    }
}

struct UbicacionPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        UbicacionPantallaView()
    }
}
