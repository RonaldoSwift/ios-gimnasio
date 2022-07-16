//
//  LoginPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct MiCuentaPantallaView: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 20){
            Text("Mi Cuenta")
                .padding()
                .border(Color.black)
            
            HStack(alignment: .center, spacing: 30){
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .foregroundColor(Color.green)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70.0, height: 50.0, alignment: .center)
                VStack{
                    Text("Sofia Torres Leon")
                        .bold()
                        .font(.title2)
                    Text("sofiaLeon@gmail.com")
                        .foregroundColor(Color.black)
                }
            }
            Text("________________________________")
                .foregroundColor(Color.blue)
            
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Text("Clases pendientes")
                        .bold()
                        .font(.title2)
                }
                
                HStack{
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.red)
                    Text("Evaluar esta aplicacion")
                        .bold()
                        .font(.title2)
                }
                
                HStack{
                    Image(systemName: "message.fill")
                        .foregroundColor(Color.blue)
                    Text("Correo")
                        .bold()
                        .font(.title2)
                }
                
                HStack{
                    Image(systemName: "network")
                        .foregroundColor(Color.blue)
                    Text("Redes Sociales")
                        .bold()
                        .font(.title2)
                }
                
                Text("Politica de privasidad")
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(6)
            }
            Spacer()
        }
        .padding()
    }
}

struct LoginPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        MiCuentaPantallaView()
    }
}
