//
//  ContentView.swift
//  Shared
//
//  Created by Syed Ghullam Meeran Gillani on 10/06/2022.
//

import SwiftUI

struct ContentView: View {
     let manager : CoreDataManger
    @State private var movieName : String = ""
    @State private var movies: [Movie] = [Movie]()
    
  
    var body: some View {
        VStack{
            TextField("Enter movie name", text:  $movieName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Save"){
                manager.saveMovie(title: movieName)
                
            }
            

            
       
            Spacer()
        }.padding()
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(manager: CoreDataManger())
    }
}
