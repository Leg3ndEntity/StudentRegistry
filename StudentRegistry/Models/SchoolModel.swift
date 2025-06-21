//
//  SchoolModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 20/06/25.
//

import Foundation

struct SchoolModel: Codable, Identifiable {
    let id: String
    var name: String
    var address: String
    var city: String
    var province: String
    var CAP: String
    var phone: String
    var email: String
}
