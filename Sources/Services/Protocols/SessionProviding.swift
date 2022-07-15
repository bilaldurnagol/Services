//
//  SessionProviding.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation
import Alamofire

public protocol SessionProviding {
    var session: Session {get}
}

extension SessionProviding{
   public var session: Session { AF }
}
