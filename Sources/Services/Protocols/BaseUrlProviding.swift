//
//  File.swift
//  
//
//  Created by Bilal Durnagöl on 15.07.2022.
//

import Foundation

public protocol BaseUrlProviding {
    var baseUrl: String {get}
}

extension BaseUrlProviding {
    public var baseUrl: String {
        return "base_url"
    }
}
