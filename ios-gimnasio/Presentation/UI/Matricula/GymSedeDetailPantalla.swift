//
//  SedeDetailsPantallaView.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 29/07/22.
//

import SwiftUI

struct GymSedeDetailPantalla: View {
    
    @State private var mostrarModal: Bool = false
    
    var body: some View {
        
        ZStack{
            
            Color("ColorDegradente")
            
            VStack{
                
                Image("MegaForceHacienda")
                    .resizable()
                    .frame(width: 390, height: 240, alignment: .center)
                    .scaledToFit()
                ScrollView(){
                    ForEach((1...3), id: \.self) {_ in
                        Text("Somos una cadena de Gimnasios peruana con 15 años impulsando un estilo de vida saludable en las familias, ahora mediante de esta plataforma digital podrás disfrutar de la experiencia Mega Force que combina las mejores clases grupales online, asesoramiento personalizado, nutrición y mucho más que permitirá que muchas personas vivan una experiencia única alrededor del mundo.\n")
                            .foregroundColor(Color.white)
                    }
                }
                
            }
            
            VStack{
                
                HStack{
                    Spacer()
                    Image("imageDeChica")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .center)
                        .scaledToFit()
                }
                .padding()
                Spacer()
                
                Button {
                    mostrarModal = true
                } label: {
                    Text("Matricularse")
                        .padding()
                        .foregroundColor(Color.white)
                        .frame(width: 360, height: 55)
                        .font(.custom("Poppins-SemiBold", size: 23))
                        .background(Color("ColorLila"))
                        .cornerRadius(15)
                }
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: $mostrarModal) {
            // Entra aqui cunado el modal desaparece
        } content: {
            Button {
                mostrarModal = false
            } label: {
                Text("Ronaldo")
            }

        }
        
    }
}

struct SedeDetailsPantallaView_Previews: PreviewProvider {
    static var previews: some View {
        GymSedeDetailPantalla()
    }
}
