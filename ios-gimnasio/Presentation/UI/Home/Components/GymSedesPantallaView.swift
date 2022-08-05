//
//  GymSedesPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct GymSedesPantallaView: View {
    
    let sedes: Array<Sede>  = [
        Sede.init(
            id: 0,
            imagenDeSede: "smartfit_benavides",
            titulo: "Smart Fit Benavides",
            subtitulo: "Av.Alfredo Benavides 347 Miraflores Municipalidad de Lima",
            tiempo: "6am-11pm",
            colorDeTiempo: Color("ColorAmarillo")),
        Sede.init(
            id: 1,
            imagenDeSede: "smartfit_higuereta",
            titulo: "Smart Fit Higuereta",
            subtitulo: "Av.Aviacion con Av.Tomas Marsano Santiago de Surco 15038",
            tiempo: "6am-12pm",
            colorDeTiempo: Color("ColorAmarillo")),
        Sede.init(
            id: 2,
            imagenDeSede: "smartfit_colonial",
            titulo: "Smart Fit Colonial ",
            subtitulo: "Av.Oscar R. Benavides 669 Cercado de Lima 15082",
            tiempo: "6am-14pm",
            colorDeTiempo: Color("ColorAmarillo")),
        Sede.init(
            id: 3,
            imagenDeSede: "smartfit_sanborja",
            titulo: "Smart Fit San Borja",
            subtitulo: "Av.Javier Prado Este 1980 San Borja 15036",
            tiempo: "6am-15pm",
            colorDeTiempo: Color("ColorAmarillo"))
    ]
    let onClickCelda: () -> Void
    
    var body: some View {
        ZStack{
            Color("ColorDegradente")
            ScrollView(.vertical){
                VStack(alignment: .center){
                    ForEach(sedes, id: \.id){ sede in
                        CeldaDeSedeGym(sede: sede, onClickCelda: onClickCelda)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
    private func CeldaDeSedeGym(sede: Sede, onClickCelda: @escaping () -> Void) -> some View {
        return HStack{
                Image(sede.imagenDeSede)
                    .resizable()
                    .frame(width: 120, height: 120, alignment: .leading)
                    .scaledToFit()
                    .cornerRadius(12)
                VStack(alignment: .leading){
                    HStack{
                        Text(sede.titulo)
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color.white)
                        Spacer()
                        Text(sede.tiempo)
                            .font(.custom("Poppins-SemiBold", size: 14))
                            .foregroundColor(sede.colorDeTiempo)
                    }
                    
                    Text(sede.subtitulo)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color.white)
                }
            }
            .padding()
            .onTapGesture {
                onClickCelda()
            }
        
    }
}

struct GymSedesPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        GymSedesPantallaView(onClickCelda: {})
    }
}
