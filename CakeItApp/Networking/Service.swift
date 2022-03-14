//
//  Service.swift
//  CakeItApp
//
//  Created by Jasim Uddin on 14/03/2022.
//

import Foundation

typealias Completion<T:Decodable> =  ((Result<[T], ServiceError>) -> Void)

protocol Service:JsonDecodable {
    func fetchData<T:Codable>(client:ServiceClient, type:T.Type, completionHandler:@escaping Completion<T>)
}
