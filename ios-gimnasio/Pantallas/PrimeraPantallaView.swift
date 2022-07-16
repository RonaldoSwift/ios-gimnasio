//
//  LoginView.swift
//  ios-gimnasio
//
//  Created by Ronaldo Andre Vargas Huaman on 8/07/22.
//

import SwiftUI

struct PrimeraPantallaView: View {
    var body: some View {
        ZStack{
            Image("FitnesLogo")
                .resizable()
            VStack{
                Text("BIENVENIDOS A STRONG FITNESS")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .border(Color.black, width: 3.0)
                    .cornerRadius(10)
                    .padding()
                
                Spacer()
                
                Text("TUS MEJORES OPCIONES DE ENTRENAMIENTO")
                    .font(.title3)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .border(Color.white, width: 3.0)
                    .cornerRadius(10)
                    .padding()
                
                Spacer()
                
                HStack{
                    Button {
                        
                    } label: {
                        Text("REGISTRARSE")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .border(Color.blue, width: 3.0)
                    .cornerRadius(10)
                    .padding()
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        VStack{
                            Image(systemName: "person")
                                .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 20.0, height: 25.0, alignment: .center)
                                    .clipShape(Circle())
                            
                            Text("INCICIAR SECION")
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .border(Color.blue, width: 3.0)
                    .cornerRadius(10)
                    .padding()
                }
                
                Spacer()
                
                Text("STRONG FITNES")
                    .font(.largeTitle)
                    .bold()
                
                Button {
                    print("Hola mundo")
                } label: {
                    Image("FacebookLog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80.0, height: 80.0, alignment: .center)
                        .clipShape(Circle())
                    Text("Continuar como facebook")
                    
                }
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        PrimeraPantallaView()
    }
}
