//
//  ClassDetailView.swift
//  StudentRegistry
//
//  Created by Luigi Emanuele Zippo on 20/06/25.
//

import SwiftUI

struct ClassDetailView: View {
    
    @State var classDetailVM = ClassDetailViewModel()
    @State var justificationSheetViewIsPresented: Bool = false
    var selectedClass: ClassModel
    
    var body: some View {
        //        List(classDetailVM.students) { student in
        //            Text(student.firstName + " " + student.lastName)
        //        }
        NavigationStack {
            Table(classDetailVM.students) {
                TableColumn("Students") { student in
                    Text(student.firstName + " " + student.lastName)
                }
                TableColumn("Absence") { student in
                    
                    if classDetailVM.todayAbsences.contains(where: { $0.studentId == student.id }) {
                        Button("Absent") {
                            justificationSheetViewIsPresented.toggle()
                        }
                        .foregroundStyle(.red)
                        .popover(isPresented: $justificationSheetViewIsPresented) {
                            JustificationSheetView()
                        }
                    }

                }
                
            }
            .navigationTitle("Students")
        }
        .onAppear {
            classDetailVM.fetchTodayAbsences()
        }
        .onChange(of: selectedClass) {
            classDetailVM.fetchStudentsByClass(selectedClassKey: selectedClass.id)
        }
    }
}

//#Preview {
//    ClassDetailView(selectedClass: ClassModel(id: "", schoolKey: "", gradeLevel: "", section: "", academicYear: ""))
//}
