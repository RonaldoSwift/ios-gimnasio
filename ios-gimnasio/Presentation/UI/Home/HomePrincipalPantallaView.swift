//
//  HomeView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct HomePrincipalPantallaView: View {
    
    @StateObject private var homeViewModel = HomeViewModel()
    @State private var selectedTab = 0
    @State private var isActive = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                TabView(selection: $selectedTab) {
                    HomePantallaView(homeViewModel: homeViewModel)
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }.tag(1)
                    
                    NavigationView {
                        GymBrandsPantallaView(homeViewModel: homeViewModel, onClickCelda: {
                            isActive = true
                        })
                        .navigationBarTitle("Marcas", displayMode: .inline)
                    }
                    .tabItem {
                        Image(systemName: "play.circle")
                        Text("Gym")
                    }.tag(2)
                    
                    NearMePantalla(homeViewModel: homeViewModel)
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Cerca a mí")
                        }.tag(3)
                    
                    TrainerPantallaView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Trainers")
                        }.tag(4)
                    
                    UsuarioPantallaView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Perfil")
                        }.tag(5)
                }
                
                NavigationLink(
                    destination: GymSedeDetailPantalla(),
                    isActive: $isActive,
                    label: {
                        EmptyView()
                            .background(Color.red)
                    }
                )
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomePrincipalPantallaView()
    }
}
