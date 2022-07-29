//
//  HomeView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct HomePrincipalPantallaView: View {
    
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            TabView() {
                HomePantallaView(homeViewModel: homeViewModel)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color("ColorDegradente"))
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                GymPantallaView(homeViewModel: homeViewModel)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color("ColorDegradente"))
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "play.circle")
                        Text("Gym")
                    }
                
                
                BailePantallaView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color("ColorDegradente"))
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Baile")
                    }
                
                
                TrainerPantallaView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color("ColorDegradente"))
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Trainer")
                    }
                
                UsuarioPantallaView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color("ColorDegradente"))
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Profile")
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomePrincipalPantallaView()
    }
}
