//
//  ClassListViewModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 20/06/25.
//

import Foundation

@Observable class ClassListViewModel {
    
    var classes: [ClassModel] = []
    var students: [StudentModel] = []
    
    func fetchClasses() {
        classes = [
            ClassModel(id: "CLS001", schoolKey: "SCH001", gradeLevel: "Grade 1", section: "A", academicYear: "2025-2026"),
            ClassModel(id: "CLS002", schoolKey: "SCH001", gradeLevel: "Grade 2", section: "B", academicYear: "2025-2026"),
            ClassModel(id: "CLS003", schoolKey: "SCH002", gradeLevel: "Grade 3", section: "C", academicYear: "2025-2026"),
            ClassModel(id: "CLS004", schoolKey: "SCH002", gradeLevel: "Grade 4", section: "D", academicYear: "2025-2026"),
            ClassModel(id: "CLS005", schoolKey: "SCH003", gradeLevel: "Grade 5", section: "E", academicYear: "2025-2026")
        ]
    }

}
