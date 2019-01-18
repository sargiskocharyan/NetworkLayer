//
//  HTTPTask.swift
//  
//
//  Created by sargis on 7/25/18.
//  Copyright © 2018 Sargis. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?,
        bodyEncoding: ParameterEncoding,
        urlParameters: Parameters?,
        additionHeaders: HTTPHeaders?)
    
    case uploadRequest(bodyData:Data?,
        mimeType:String,
        filename:String,
        bodyParameters:Parameters?,
        bodyEncoding: ParameterEncoding,
        additionHeaders: HTTPHeaders?)
    // other cases will be added here
}


