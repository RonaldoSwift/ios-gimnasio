//
//  Prueba.swift
//  ios-gimnasio
//
//  Created by Ronaldo Andre Vargas Huaman on 1/08/22.
//

import Foundation
import SwiftUI

struct PruebaView: View {
    
    var body: some View {
        TabView{
            Button {
                
            } label: {
                Text("hola")
            }.tabItem {
                Text("Ronaldo")
            }
            
            Text("Gerson")
                .tabItem {
                    Text("Carlos")
                }
            VStack{
            Text("Hello")
                    .foregroundColor(Color.red)
                Text("Word")
                    .foregroundColor(Color.green)
            }.tabItem {
                Text("Eduardo")
            }
            
            NavigationView{
                
                NavigationLink {
                    Text("Swift")
                } label: {
                    Text("Me gusta")
                }

            }.tabItem {
                Text("Luisito")
            }
        }
    }
}

struct PruebaView_Previews: PreviewProvider {
    static var previews: some View {
        PruebaView()
    }
}
