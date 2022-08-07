//
//  TrainerPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct TrainerPantallaView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack(alignment: .center, spacing: 115){
                    Text("<-")
                        .foregroundColor(Color.white)
                    Text("Sessions")
                        .foregroundColor(Color.white)
                    Image("imageDeChica")
                }
                
                Text("Live Sessions")
                    .foregroundColor(Color.white)
                
                ScrollView(.horizontal){
                    HStack{
                        Image("ImageMujerConLiga")
                            .resizable()
                            .frame(width: 319, height: 226, alignment: .center)
                        Image("CuartoDeImagen")
                            .resizable()
                            .frame(width: 319, height: 226, alignment: .center)
                    }
                }
                
                HStack(alignment: .center, spacing: 240){
                    Text("Trainers")
                        .foregroundColor(Color.white)
                    Text("See all")
                        .foregroundColor(Color.white)
                }
            }
            .padding()
        }.background(Color("ColorDegradente"))
    }
}

struct TrainerPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerPantallaView()
    }
}
