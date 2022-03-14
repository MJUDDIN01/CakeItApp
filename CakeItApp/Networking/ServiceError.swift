//
//  ServiceError.swift
//  CakeItApp
//
//  Created by Jasim Uddin on 14/03/2022.
//

import Foundation

enum ServiceError: Error {
    case parsinFailed(message:String)
    case errorWith(message:String)
    case networkNotAvailalbe
    case requestNotCreated(message:String)
}
