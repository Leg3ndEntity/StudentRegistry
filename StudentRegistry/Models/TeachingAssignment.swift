//
//  TeacherClassSubjectModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 16/06/25.
//

import Foundation

struct TeachingAssignment: Identifiable, Codable {
    var id: String
    var classKey: String
    var subjectKey: String
    var teacherKey: String
    var academicYear: String
}
