//
//  TeacherModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 16/06/25.
//

import Foundation

struct TeacherModel: Identifiable, Codable {
    let id: String
    var schoolKey: String
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
}
