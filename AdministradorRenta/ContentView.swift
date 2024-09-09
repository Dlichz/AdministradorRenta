//
//  ContentView.swift
//  AdministradorRenta
//
//  Created by Francisco David Zárate Vásquez on 08/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var inquilinos = [
        Inquilino(primerNombre: "Angelica", primerApellido: "Vásquez", numeroTelefonico: "951321234", departamentoEnRenta: Departamento(numero: 1, precioDeRenta: 2000), fechaDeIngreso: Date(), status: .pagado),
        Inquilino(primerNombre: "Francisco", primerApellido: "Guevara", numeroTelefonico: "9513212567", departamentoEnRenta: Departamento(numero: 2, precioDeRenta: 1500), fechaDeIngreso: Date(), status: .pendiente),
        Inquilino(primerNombre: "Valeria", primerApellido: "Zárate", numeroTelefonico: "888654412", departamentoEnRenta: Departamento(numero: 3, precioDeRenta: 1900), fechaDeIngreso: Date(), status: .retraso)
    ]
    
    var body: some View {
        VStack {
            NavigationView{
                List {
                    ForEach(self.inquilinos) { person in
                        NavigationLink(destination: InquilinoDetallesUIView()){
                            InquilinoIItemUIView(inquilino: person)
                                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                        }
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
