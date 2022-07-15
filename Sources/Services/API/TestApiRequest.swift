//
//  TestApiRequest.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

final public class TestApiRequest: Requestable {

    public var path: String = ""
    
    public var params: Parameters? = nil
    
    public var method: HTTPMethod = .post
    
    public var encoding: ParameterEncoding = JSONEncoding.default
    
    public init() {}
        
}
