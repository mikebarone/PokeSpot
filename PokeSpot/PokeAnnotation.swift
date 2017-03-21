//
//  PokeAnnotation.swift
//  PokeSpot
//
//  Created by Mike Barone on 2017-03-19.
//  Copyright © 2017 Mike Barone. All rights reserved.
//

import Foundation
import MapKit

class PokeAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    var pokemonNumber: Int
    var pokemonName: String
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, pokemonNumber: Int) {
        self.coordinate = coordinate
        self.pokemonNumber = pokemonNumber
        self.pokemonName = POKEMON_LIST[pokemonNumber - 1].capitalized
        self.title = self.pokemonName
    }
}


