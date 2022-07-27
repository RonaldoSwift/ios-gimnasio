//
//  HomePantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct HomePantallaView: View {
    var body: some View {
        ZStack{
            Color("ColorDegradente")
            ScrollView(.vertical){
            VStack(alignment: .leading) {
                
                
                Cabezera()

                PrimerCuerpo()

                PrimerScrollView()

                SegundoCuerpo()

                SegundoScrollView()

                TercerCuerpo()

                TercerScrollView()

                CuartoCuerpo()

                CuartoScrollView()
            }
            .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
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
    private func PrimerCuerpo() -> some View {
        return HStack(alignment: .center, spacing: 110){
            Text("Today Workout Plan")
                .foregroundColor(Color.white)
                .font(.custom("Poppins-Italic", size: 17))
            Text("6am - 8am")
                .font(.custom("Poppins-Italic", size: 18))
                .foregroundColor(Color("ColorAmarillo"))
        }
    }
    private func PrimerScrollView() -> some View{
        return ScrollView(.horizontal){
            HStack(alignment: .center){
                Image("imageRanning1")
                    .resizable()
                    .frame(width: 148, height: 169, alignment: .center)
                
                Image("Planchas")
                    .resizable()
                    .frame(width: 148, height: 169, alignment: .center)
                
                Image("Imageincompleto")
                    .resizable()
                    .frame(width: 148, height: 169, alignment: .center)
                
            }
        }
        
    }
    private func SegundoCuerpo() -> some View{
        return HStack(alignment: .center, spacing: 210){
            Text("Cartegories")
                .foregroundColor(Color.white)
            
            Text("See all")
                .foregroundColor(Color("ColorPlomoEncendido"))
        }
        
    }
    private func SegundoScrollView() -> some View{
        return ScrollView(.horizontal){
            HStack(alignment: .center){
                Image("ImageCargandoBarra")
                    .resizable()
                    .frame(width: 77, height: 104, alignment: .center)
                Image("Yoga")
                    .resizable()
                    .frame(width: 77, height: 104, alignment: .center)
                Image("Fitnes")
                    .resizable()
                    .frame(width: 77, height: 104, alignment: .center)
                Image("Aerobicos")
                    .resizable()
                    .frame(width: 77, height: 104, alignment: .center)
                Image("Trainer")
                    .resizable()
                    .frame(width: 77, height: 104, alignment: .center)
            }
        }
        
    }
    private func TercerCuerpo() -> some View{
        HStack(alignment: .center, spacing: 230){
            Text("Treding")
                .foregroundColor(Color.white)
            
            Text("Sell all")
                .foregroundColor(Color("ColorPlomoEncendido"))
        }
        
    }
    private func TercerScrollView() -> some View {
        return ScrollView(.horizontal){
            HStack(alignment: .center){
                Image("GymCentres")
                    .resizable()
                    .frame(width: 223, height: 119, alignment: .center)
                Image("TrainerCentres")
                    .resizable()
                    .frame(width: 223, height: 119, alignment: .center)
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
