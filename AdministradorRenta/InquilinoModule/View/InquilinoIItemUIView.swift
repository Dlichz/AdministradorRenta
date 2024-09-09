//
//  InquilinoIItemUIView.swift
//  AdministradorRenta
//
//  Created by Francisco David Zárate Vásquez on 08/09/24.
//

import SwiftUI

struct InquilinoIItemUIView: View {
    let inquilino: Inquilino
    var viewModel =  InquilinoItemViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(viewModel.obtenerNombreCompleto(inquilino: inquilino))")
                .font(.title3)
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "calendar")
                    .frame(width: 24, height: 24)
                Text("\(viewModel.formatearFecha(fecha: inquilino.fechaDeIngreso))")
                    .font(.footnote)
            }
            HStack(alignment: .firstTextBaseline) {
                Text("Pago del mes:")
                    .font(.footnote)
                Text("\(viewModel.formatearComoMoneda(cantidad: inquilino.departamentoEnRenta.precioDeRenta))")
                    .font(.footnote)
                    .fontWeight(.bold)
                Spacer()
                Text("\(inquilino.status.rawValue)")
                    .frame(alignment: .center)
                    .foregroundStyle(viewModel.getStatusColor(with: inquilino))
            }
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 0))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

#Preview {
    InquilinoIItemUIView(inquilino: Inquilino(primerNombre: "Francisco", primerApellido: "Zárate", segundoApellido: "Vásquez", numeroTelefonico: "9513929968", departamentoEnRenta: Departamento(numero: 1, precioDeRenta: 1500.00), fechaDeIngreso: Date(), status: .pagado))
}
