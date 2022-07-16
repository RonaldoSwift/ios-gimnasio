//
//  RegistroPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/07/22.
//

import SwiftUI

struct RegistroPantallaView: View {
    @State private var nombreDeUsuario: String = ""
    @State private var correoElectronico: String = ""
    @State private var contraseña: String = ""
    
    var body: some View {
        ZStack{
            Image("FitnesLogo")
                .resizable()
            VStack(alignment: .center){
                Text("REGISTRARSE")
                    .padding()
                    .frame(width: 150, height: 50, alignment: .leading)
                    .foregroundColor(Color.black)
                    .border(Color.blue)
                
                Spacer()
                
                TextField("Nombre del usuario ", text: $nombreDeUsuario)
                    .padding()
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity)
                    .border(Color.black)
                
                Spacer()
                
                TextField("Correo electronico ", text: $correoElectronico)
                    .padding()
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity)
                    .border(Color.black)
                
                Spacer()
                
                TextField("Contraseña ", text: $contraseña)
                    .padding()
                    .font(.title2)
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity)
                    .border(Color.black)
                
                HStack{
                    Text("Recuerda ejercitarse")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity)
                        .border(Color.black)
                        .cornerRadius(10)
                    
                    Text("Politica de privasidad")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.blue)
                        .frame(maxWidth: .infinity)
                        .border(Color.black)
                        .cornerRadius(10)
                    
                }
                .padding()
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("REGISTRARSE")
                }
                .padding()
                .frame(width: 180, height: 50, alignment: .leading)
                .foregroundColor(Color.white)
                .font(.title2)
                .background(Color.blue)
                .border(Color.blue)
                .cornerRadius(10)
                .background(Color.blue)
                .cornerRadius(10)
                
            }
        }
        .padding()
    }
}

struct RegistroPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroPantallaView()
    }
}
