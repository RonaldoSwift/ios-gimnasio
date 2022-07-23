//
//  HomeView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 23/07/22.
//

import SwiftUI

struct HomePrincipalPantallaView: View {
    var body: some View {
        
        NavigationView {
    
            TabView() {
                HomePantallaView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                GymPantallaView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Gym")
                    }
                
                BailePantallaView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Baile")
                    }
                
                TrainerPantallaView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Trainer")
                    }
                
                UsuarioPantallaView()
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
