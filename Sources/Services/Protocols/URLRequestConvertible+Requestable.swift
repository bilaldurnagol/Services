//
//  URLRequestConvertible+Requestable.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

extension URLRequestConvertible where Self: RequestProviding & BaseUrlProviding {
   public func asURLRequest() throws -> URLRequest {
        let url = try! baseUrl.asURL()
        var req = URLRequest(url: url.appendingPathComponent(path))
        req.method = method
        req = try! encoding.encode(req, with: params)
        
        if let page = pageParams{
            req = try! URLEncoding.default.encode(req, with: page)
        }
        
        return req
    }
}

extension URLRequestConvertible where Self: SessionProviding & InterceptorProviding {
   public var dataRequest: DataRequest? {
        session.request(self, interceptor: interceptor)
    }
}
