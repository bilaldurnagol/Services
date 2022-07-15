//
//  Requestable.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

typealias Requestable = RequestProviding & SessionProviding & InterceptorProviding & BaseUrlProviding & URLRequestConvertible
