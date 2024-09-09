//
//  InquilinoItemViewModel.swift
//  AdministradorRenta
//
//  Created by Francisco David Zárate Vásquez on 08/09/24.
//

import SwiftUI

class InquilinoItemViewModel {
    
    func getStatusColor(with: Inquilino) -> Color {
        let statusPago = with.status
        
        switch statusPago {
        case .pagado:
            return .interactions
        case .pendiente:
            return .warning
        case .retraso:
            return .error
        case .alCorriente:
            return .tipografyBold
        case .proximo:
            return .tipografyBold
        }
    }
    
    
    func obtenerNombreCompleto(inquilino: Inquilino) -> String {
        return "\(inquilino.primerNombre) \(inquilino.segundoNombre ?? "") \(inquilino.primerApellido) \(inquilino.segundoApellido ?? "")"
    }
    
    func formatearFecha(fecha: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "es_ES") // Establecer el idioma español
        dateFormatter.dateFormat = "d 'de' MMMM 'de' yyyy" // Formato deseado
        return dateFormatter.string(from: fecha)
    }
    
    func formatearComoMoneda(cantidad: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency // Estilo de moneda
        numberFormatter.locale = Locale(identifier: "es_MX") // Configuración regional para México (puedes cambiarla según tu región)
        
        if let monedaFormateada = numberFormatter.string(from: NSNumber(value: cantidad)) {
            return monedaFormateada
        } else {
            return "$0.00" // Valor por defecto en caso de fallo en el formateo
        }
    }
}
