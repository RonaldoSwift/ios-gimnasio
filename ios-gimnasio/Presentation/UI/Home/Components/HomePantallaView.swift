//
//  HomePantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct HomePantallaView: View {
    
    let secciones : Array<Section> = [
        Section.init(
            id:0,
            titulo: "Today Workout Plan",
            subTitulo: "6am - 8am",
            imagenes: ["imageRanning1", "Planchas", "CuartoDeImagen"],
            color: Color("ColorAmarillo"),
            anchoDeImagenes: 148, altoDeImagen: 169),
        Section.init(
            id: 1,
            titulo: "Categories",
            subTitulo: "See all",
            imagenes: ["ImageCargandoBarra","Yoga", "Fitnes", "Aerobicos", "Trainer"],
            color: Color("ColorPlomoEncendido"),
            anchoDeImagenes: 77, altoDeImagen: 104),
        Section.init(
            id: 2,
            titulo: "Treading",
            subTitulo: "Sell all",
            imagenes: ["GymCentres", "TrainerCentres"],
            color: Color("ColorPlomoEncendido"),
            anchoDeImagenes: 223, altoDeImagen: 119)
    ]
    
    var body: some View {
        ZStack{
            Color("ColorDegradente")
            ScrollView(.vertical){
                VStack(alignment: .center) {
                    
                    Cabezera()
                    
                    ForEach(secciones, id: \.id){ elemento in
                        
                        SectionGym(
                            textoTitulo: elemento.titulo,
                            textoSubTitulo: elemento.subTitulo,
                            colorSubtitulo: elemento.color,
                            nombreDeImagenes: elemento.imagenes,
                            anchoDeImagen: elemento.anchoDeImagenes, altoDeImagen: elemento.altoDeImagen)
                        
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func SectionGym(
        textoTitulo: String,
        textoSubTitulo: String,
        colorSubtitulo: Color,
        nombreDeImagenes: [String],
        anchoDeImagen: CGFloat,
        altoDeImagen: CGFloat
    ) -> some View{
        return VStack{
            PrimerCuerpo(
                textoTiTulo: textoTitulo,
                textoSubtitulo: textoSubTitulo,
                colorSubtitulo: colorSubtitulo
            )
            PrimerScrollView(nombreDeImagenes: nombreDeImagenes, anchoDeImagen: anchoDeImagen, altoDeImagen: altoDeImagen)
            
        }
    }
    
    private func Cabezera() -> some View {
        return HStack(alignment: .center, spacing: 50){
            VStack(alignment: .leading){
                HStack{
                    Text("Hello")
                    Text("Juliet")
                        .foregroundColor(Color("ColorAmarillo"))
                }
                .font(.custom("", size: 18))
                Text("Let`s start your day")
                    .font(.custom("Poppins-Bold", size: 23))
                
            }
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            
            Image("imageDeChica")
                .resizable()
                .frame(width: 60, height: 60)
        }
    }
    private func PrimerCuerpo(textoTiTulo: String,textoSubtitulo: String,colorSubtitulo: Color) -> some View {
        return HStack(alignment: .center){
            Text(textoTiTulo)
                .foregroundColor(Color.white)
                .font(.custom("Poppins-Italic", size: 17))
            Spacer()
            Text(textoSubtitulo)
                .font(.custom("Poppins-Italic", size: 18))
                .foregroundColor(colorSubtitulo)
        }
    }
    private func PrimerScrollView(nombreDeImagenes: [String], anchoDeImagen: CGFloat, altoDeImagen: CGFloat) -> some View{
        return ScrollView(.horizontal){
            HStack(alignment: .center){
                
                ForEach(nombreDeImagenes, id: \.self) { elemento in
                    Image(elemento)
                        .resizable()
                        .frame(width: anchoDeImagen, height: altoDeImagen, alignment: .center)
                    
                }
            }
        }
        
    }
    
    

    private func CuartoCuerpo() -> some View {
        return Text("Discover")
            .foregroundColor(Color.white)
    }
    private func CuartoScrollView() -> some View {
        return ScrollView(.horizontal){
            HStack(alignment: .center){
                Image("Pesas")
                    .resizable()
                    .frame(width: 227, height: 97, alignment: .center)
                Image("Maquinas")
                    .resizable()
                    .frame(width: 227, height: 97, alignment: .center)
            }
        }
        
    }
}

struct HomePantallaView_Previews: PreviewProvider {
    static var previews: some View {
        HomePantallaView()
    }
}
