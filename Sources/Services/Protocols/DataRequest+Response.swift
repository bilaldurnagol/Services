//
//  DataRequest+Response.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

extension DataRequest {
    func mResponse<T: Decodable>(_ completion: @escaping (Result<T, AFError>) -> Void){
        responseDecodable(completionHandler: { (response:DataResponse<T, AFError>) in
            completion(response.result)
        })
    }
}
