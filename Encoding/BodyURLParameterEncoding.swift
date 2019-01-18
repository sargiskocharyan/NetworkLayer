//
//  BodyURLParameterEncoding.swift
//
//
//  Created by sargis on 8/30/18.
//  Copyright © 2018 Sargis. All rights reserved.
//

import Foundation

public struct BodyURLParameterEncoder: ParameterEncoder {
    public func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        
        var bodyString = ""
        for (key,value) in parameters {
            let item = "\(key)=\(value)&"
            bodyString += item
        }
        
        let bodyStr = String(bodyString.dropLast())
        let bodyData = bodyStr.data(using: .utf8)
        urlRequest.httpBody = bodyData
        
        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        }
    }
}
