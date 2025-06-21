//
//  StudentModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 16/06/25.
//

import Foundation

struct StudentModel: Identifiable, Codable {
    let id: String
    var classKey: String
    var firstName: String
    var lastName: String
    var dateOfBirth: Date
}
