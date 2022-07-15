//
//  RequestProviding.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

public protocol RequestProviding {
    var path: String {get}
    var params: Parameters? {get}
    var pageParams: Parameters? {get}
    var encoding: ParameterEncoding {get}
    var method: HTTPMethod {get}
}

extension RequestProviding {
   public var pageParams: Parameters? {
        return nil
    }
}
