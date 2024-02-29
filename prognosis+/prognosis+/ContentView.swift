//
//  ContentView.swift
//  prognosis+
//
//  Created by UMESH KUMAR on 15/08/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
  
    let gradient = Gradient(colors: [.white,.blue])
    let coursesList = [course(name: "Science"),course(name: "Computer Science"),course()]
    var body: some View {
        NavigationView {
            HStack{
                Spacer()
                VStack{
                    Image("profile")
                        .clipShape(Circle())
                        .overlay(content: {
                            Circle().stroke(.white,lineWidth: 3)
                        }).shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.1),radius: 6).padding(.top,30)
                    VStack {
                        Text("Hello World").font(.title).foregroundColor(.black).underline().padding(.bottom,2)
                        Text("Welocme to Prognosis").font(.subheadline).foregroundColor(.red)
                    }.padding(.top,20)
                    
                    List{
                        courses(course: coursesList[0])
                        courses(course: coursesList[1])
                        courses(course: coursesList[2])
                    }.background(.clear)
                        
                    
                   Spacer()
                }
                Spacer()
                
            }.background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
            
        }
    }


}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
