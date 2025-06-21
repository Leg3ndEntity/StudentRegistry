//
//  ClassDetailViewModel.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 20/06/25.
//

import Foundation

@Observable class ClassDetailViewModel {
    
    var students: [StudentModel] = []
    var todayAbsences: [AbsenceModel] = []
    
//    init() {
//        
//        self.students = [
//            StudentModel(id: "STD001", classKey: "CLS001", firstName: "Luca", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2010, month: 1, day: 1).date!),
//            StudentModel(id: "STD002", classKey: "CLS002", firstName: "Giulia", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2011, month: 2, day: 2).date!),
//            StudentModel(id: "STD003", classKey: "CLS003", firstName: "Marco", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2012, month: 3, day: 3).date!),
//            StudentModel(id: "STD004", classKey: "CLS004", firstName: "Sofia", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2013, month: 4, day: 4).date!),
//            StudentModel(id: "STD005", classKey: "CLS005", firstName: "Francesco", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2014, month: 5, day: 5).date!),
//            StudentModel(id: "STD006", classKey: "CLS001", firstName: "Anna", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2010, month: 6, day: 6).date!),
//            StudentModel(id: "STD007", classKey: "CLS002", firstName: "Matteo", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2011, month: 7, day: 7).date!),
//            StudentModel(id: "STD008", classKey: "CLS003", firstName: "Chiara", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2012, month: 8, day: 8).date!),
//            StudentModel(id: "STD009", classKey: "CLS004", firstName: "Alessandro", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2013, month: 9, day: 9).date!),
//            StudentModel(id: "STD010", classKey: "CLS005", firstName: "Martina", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2014, month: 10, day: 10).date!),
//            
//        ]
//    }
    
    func fetchStudentsByClass(selectedClassKey: String) {
        students = [
            StudentModel(id: "STD001", classKey: "CLS001", firstName: "Luca", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2010, month: 1, day: 1).date!),
            StudentModel(id: "STD002", classKey: "CLS002", firstName: "Giulia", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2011, month: 2, day: 2).date!),
            StudentModel(id: "STD003", classKey: "CLS003", firstName: "Marco", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2012, month: 3, day: 3).date!),
            StudentModel(id: "STD004", classKey: "CLS004", firstName: "Sofia", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2013, month: 4, day: 4).date!),
            StudentModel(id: "STD005", classKey: "CLS005", firstName: "Francesco", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2014, month: 5, day: 5).date!),
            StudentModel(id: "STD006", classKey: "CLS001", firstName: "Anna", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2010, month: 6, day: 6).date!),
            StudentModel(id: "STD007", classKey: "CLS002", firstName: "Matteo", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2011, month: 7, day: 7).date!),
            StudentModel(id: "STD008", classKey: "CLS003", firstName: "Chiara", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2012, month: 8, day: 8).date!),
            StudentModel(id: "STD009", classKey: "CLS004", firstName: "Alessandro", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2013, month: 9, day: 9).date!),
            StudentModel(id: "STD010", classKey: "CLS005", firstName: "Martina", lastName: "Rossi", dateOfBirth: DateComponents(calendar: .current, year: 2014, month: 10, day: 10).date!),
            
        ]
            .filter( { $0.classKey == selectedClassKey})
    }
    
    func fetchTodayAbsences() {
        todayAbsences = [
            AbsenceModel(id: "ABS001", studentId: "STD001", date: Date(), justified: false),
            AbsenceModel(id: "ABS002", studentId: "STD003", date: Date(), justified: true),
            AbsenceModel(id: "ABS003", studentId: "STD005", date: Date(), justified: false),
            AbsenceModel(id: "ABS004", studentId: "STD007", date: Date(), justified: false),
            AbsenceModel(id: "ABS004", studentId: "STD009", date: Date(), justified: false)
        ]
    }
    
    
}
