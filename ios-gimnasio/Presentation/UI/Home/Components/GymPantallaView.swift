//
//  GymPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct GymPantallaView: View {
    
    let brands = [
        Brand(id: 0, title: "Gold's Gym", image: Assets.Registro.googleIcono.image),
        Brand(id: 1, title: "SmartFit", image: Assets.Registro.googleIcono.image),
        Brand(id: 2, title: "Bodytech", image: Assets.Registro.googleIcono.image),
        Brand(id: 3, title: "Megaforce", image: Assets.Registro.googleIcono.image),
        Brand(id: 4, title: "Megatlon", image: Assets.Registro.googleIcono.image),
        Brand(id: 5, title: "Gimnasio B2", image: Assets.Registro.googleIcono.image),
        Brand(id: 6, title: "Aldo's Gym", image: Assets.Registro.googleIcono.image),
        Brand(id: 7, title: "X Sport Gym", image: Assets.Registro.googleIcono.image),
        Brand(id: 8, title: "Master Gym", image: Assets.Registro.googleIcono.image),
        Brand(id: 9, title: "Fitness de Impacto", image: Assets.Registro.googleIcono.image),
        Brand(id: 10, title: "Sportlife Fitness Club", image: Assets.Registro.googleIcono.image)
    ]
    
    let columnas = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columnas
            ) {
                ForEach(brands, id: \.id) { brand in
                    NavigationLink(destination: GymSedesPantallaView()) {
                        GymCard(brand: brand)
                    }
                }
            }
        }
    }
    
    private func GymCard(brand: Brand) -> some View {
        ZStack {
            Image(uiImage: brand.image)
                .resizable()
                .padding()
                .background(Color.black)
                .cornerRadius(25)
            
            VStack {
                Spacer()
                Text(brand.title)
                    .padding(5)
                    .background(Color.green)
            }
        }
        .padding(5)
        .frame(height: 200)
    }
    
}

struct GymPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        GymPantallaView()
    }
}
