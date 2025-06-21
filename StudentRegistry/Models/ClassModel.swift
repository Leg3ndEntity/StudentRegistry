//
//  ClassModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 16/06/25.
//

import Foundation

struct ClassModel: Codable, Identifiable, Hashable {
    var id: String
    var schoolKey: String
    var gradeLevel: String
    var section: String
    var academicYear: String
}
