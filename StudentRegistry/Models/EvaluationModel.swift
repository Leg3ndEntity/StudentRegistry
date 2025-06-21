//
//  EvaluationModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 16/06/25.
//

import Foundation

struct EvaluationModel: Identifiable, Codable {
    let id: String
    var studentId: String
    var teacherKey: String
    var subjectId: String
    var date: Date
    var gradeValue: Int  // 1 to 10
    var gradeType: GradeType
}
