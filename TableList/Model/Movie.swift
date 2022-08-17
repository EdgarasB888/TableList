//
//  Movie.swift
//  TableList
//
//  Created by iMac on 2022-08-10.
//

import Foundation

struct Movie
{
    let title: String
    let cover: String
    let genre: String
    let year: Int
    let description: String
    let trailerURL: String
    
    static func createMovie() -> [Movie]
    {
        var movies: [Movie] = []
        
        let titles = DataManager.shared.movieTitles
        let covers = DataManager.shared.imageNames
        let genres = DataManager.shared.movieGenres
        let years = DataManager.shared.releaseYears
        let descriptions = DataManager.shared.descriptions
        let trailerURLS = DataManager.shared.movieTrailerUrls
        
        for i in 0..<titles.count
        {
            let movie = Movie(title: titles[i], cover: covers[i], genre: genres[i], year: years[i], description: descriptions[i], trailerURL: trailerURLS[i])
            movies.append(movie)
        }
        
        return movies
    }
    
}
