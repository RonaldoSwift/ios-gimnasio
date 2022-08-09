//
//  ModalDeMatriculaView.swift
//  ios-gimnasio
//
//  Created by Ronaldo Andre Vargas Huaman on 8/08/22.
//

import SwiftUI

struct ModalDeMatriculaView: View {
    @State private var pagoConTarjeta: String = ""
    @State private var afiliarseAlDebito: String = ""
    @State private var pagarConPaypal: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Tipos de pagos")
                .font(.custom("Poppins-BoldItalic", size: 30))
                .foregroundColor(Color.white)
            
            Text("Seleccione tipo de pago")
                .font(.custom("Poppins-BoldItalic", size: 20))
                .foregroundColor(Color.white)
            
            HStack{
                Spacer(minLength: 100.0)
                Image("tarjetas")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                TextField("Pagar con Tarjeta de Credito", text: $pagoConTarjeta)
                    .foregroundColor(Color.black)
            }
            .padding()
            .frame(height: 50)
            .font(.custom("Poppins-Light", size: 16))
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 0))
            .background(Color.white)
            .cornerRadius(15)
            
            HStack{
                Spacer(minLength: 100.0)
                Image("Afiliarse")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                TextField("Afiliarte a Debito Automatico", text: $afiliarseAlDebito)
            }
            .frame(height: 50)
            .font(.custom("Poppins-Light", size: 16))
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 0))
            .background(Color.white)
            .cornerRadius(15)
            
            HStack{
                Spacer(minLength: 105.0)
                Image("paypalPago")
                    .resizable()
                    .frame(width: 35, height: 20, alignment: .center)
                TextField("Pagar con Paypal", text: $pagarConPaypal)
            }
            .frame(height: 50)
            .font(.custom("Poppins-Light", size: 16))
            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 0))
            .background(Color.white)
            .cornerRadius(15)
            
        }
        .padding()
        .background(Color("ColorPlomo"))
    }
}

struct ModalDeMatriculaView_Previews: PreviewProvider {
    static var previews: some View {
        ModalDeMatriculaView()
    }
}
