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
    
    func populateMovie(){
        movies = manager.getAllMovies()
    }
    
    var body: some View {
        VStack{
            TextField("Enter movie name", text:  $movieName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Save"){
                manager.saveMovie(title: movieName)
                populateMovie()
            }
            
            
            List{
                ForEach(movies, id: \.self){ movie in
                    Text(movie.title ?? "")
                }.onDelete { IndexSet in
                    IndexSet.forEach { index in
                        let movie = movies[index]

                        manager.deleteMovie(movie: movie)
                        populateMovie()
                    }
                }
            }
            Spacer()
        }.padding()
            .onAppear {
                populateMovie()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(manager: CoreDataManger())
    }
}
