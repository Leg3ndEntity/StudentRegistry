//
//  AbsenceModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 16/06/25.
//

import Foundation

struct AbsenceModel: Identifiable, Codable {
    let id: String
    var studentId: String
    var date: Date
    var justified: Bool
    
//    enum CodingKeys: String, CodingKey {
//        case id = "AppId"
//
//    }
}
