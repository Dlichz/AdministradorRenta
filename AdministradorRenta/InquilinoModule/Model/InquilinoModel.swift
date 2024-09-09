//
//  InquilinoModel.swift
//  AdministradorRenta
//
//  Created by Francisco David Zárate Vásquez on 08/09/24.
//

import Foundation

struct Inquilino: Identifiable {
    var id = UUID()
    var primerNombre: String
    var segundoNombre: String?
    var primerApellido: String
    var segundoApellido: String?
    var numeroTelefonico: String
    var departamentoEnRenta: Departamento
    var fechaDeIngreso: Date
    var fechaDeSalida: Date?
    var status: statusDePagoEnum
}

struct Departamento {
    var numero: Int
    var precioDeRenta: Double
    var deposito: Double?
    var fechaDePago: Date?
}

enum statusDePagoEnum: String {
    case pagado = "Pagado"
    case pendiente = "Pendiente"
    case retraso = "Renta Vencida"
    case alCorriente = "Al corriente"
    case proximo = "Vence Pronto"
    case venceHoy = "Vence Hoy"
}
