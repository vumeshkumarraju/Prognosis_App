//
//  courses.swift
//  prognosis+
//
//  Created by UMESH KUMAR on 15/08/23.
//

import SwiftUI

struct courses: View {
    var course:course
    
    var body: some View {
        HStack{
                course.img.resizable()
                    .frame(width: 40,height: 40)
                    .padding(.leading,20)
                Text(course.name).padding(.leading,20)
                Spacer()
        }
    }
}

struct courses_Previews: PreviewProvider {
    static var previews: some View {
        courses(course: course())
    }
}
