//
//  MockService.swift
//  CakeItAppTests
//
//  Created by Jasim Uddin on 14/03/2022.
//

import Foundation
@testable import CakeItApp

class MockService: Service, JsonDecodable {
    
    var responseFileName = ""

    func fetchData<T>(client: ServiceClient, type: T.Type, completionHandler: @escaping Completion<T>) where T : Decodable, T : Encodable {
        // Obtain Reference to Bundle
        let bundle = Bundle(for:MockService.self)
        
        guard let url = bundle.url(forResource:responseFileName, withExtension:"json"),
              let data = try? Data(contentsOf: url),
              let output = decode(input:data, type:T.self)
        else {
            completionHandler(.failure(ServiceError.parsinFailed(message:"Failed to get response")))
            return
        }
        completionHandler(.success(output))
    }
}
