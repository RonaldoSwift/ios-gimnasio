//
//  GymPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct GymBrandsPantallaView: View {
    
    let homeViewModel: HomeViewModel
    
    let onClickCelda: () -> Void
    
    let brands = [
        Brand(id: 0, title: "Gold's Gym", image: Assets.Registro.brand_gold_gym.image),
        Brand(id: 1, title: "SmartFit", image: Assets.Registro.brand_smart_fit.image),
        Brand(id: 2, title: "Bodytech", image: Assets.Registro.brand_bodytech.image),
        Brand(id: 3, title: "Megaforce", image: Assets.Registro.brand_megaforce.image),
        Brand(id: 4, title: "Megatlon", image: Assets.Registro.brand_megatlon.image),
        Brand(id: 5, title: "Gimnasio B2", image: Assets.Registro.b2_gimnasio.image),
        Brand(id: 6, title: "Aldo's Gym", image: Assets.Registro.aldos_gym.image),
        Brand(id: 7, title: "X Sport Gym", image: Assets.Registro.x_sport_gym.image),
        Brand(id: 8, title: "Master Gym", image: Assets.Registro.master_gym.image),
    ]
    
    let columnas = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200))
    ]
    
    
    
    var body: some View {
        ZStack {
            Color("ColorDegradente")
            ScrollView {
                LazyVGrid(
                    columns: columnas
                ) {
                    ForEach(brands, id: \.id) { brand in
                        NavigationLink(destination: GymSedesPantallaView(onClickCelda: onClickCelda)) {
                            GymCard(brand: brand)
                        }.isDetailLink(false)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func GymCard(brand: Brand) -> some View {
        ZStack {
            Image(uiImage: brand.image)
                .resizable()
                .background(Color.black)
                .cornerRadius(25)
            
            VStack {
                Spacer()
                Text(brand.title)
                    .padding(5)
            }
        }
        .padding(5)
        .frame(height: 200)
    }
    
}

struct GymPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        GymBrandsPantallaView(
            homeViewModel: HomeViewModel(),
            onClickCelda: {}
        )
    }
}
