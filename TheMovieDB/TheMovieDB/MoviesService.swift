//
//  MoviesService.swift
//  TheMovieDB
//
//  Created by Jaime Laino on 1/26/17.
//  Copyright © 2017 Globant. All rights reserved.
//

import Foundation

enum MoviesListType  {
    case nowPlaying
    case topRated
    case popular
    case upcomming
    
    static let allCases = [nowPlaying, topRated, popular, upcomming]
}

extension MoviesListType {
    var path : String {
        switch self {
        case .nowPlaying: return "/movie/now_playing"
        case .topRated: return "/movie/top_rated"
        case .popular: return "/movie/popular"
        case .upcomming: return "/movie/upcoming"
        }
    }
}

typealias MovieResponseHandler = (TheMovieDBResponse<MovieResponse>) -> Void

protocol MovieService {
    static func retrieveMovieList(type: MoviesListType,completion: @escaping MovieResponseHandler)
}
