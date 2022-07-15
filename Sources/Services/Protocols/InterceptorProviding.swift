//
//  InterceptorProviding.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

public protocol InterceptorProviding {
    var interceptor: RequestInterceptor? {get}
}

extension InterceptorProviding {
  public var interceptor: RequestInterceptor? {
        return nil
    }
}
