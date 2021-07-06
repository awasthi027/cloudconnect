//
//  URLRequest+CloudService.swift
//  HCSCloudConnect

/*
******************************************************************
* COPYRIGHT (c) <<2020>> <<Harman Connected Services  >>         *
*
 * All rights reserved                                           *
*
 * This software embodies materials and concepts which are       *
* confidential to <<Customer Name>> and is made available solely *
* pursuant to the terms of a written license agreement with      *
* <<Harman Product>>.                                            *
*
* Designed and Developed by Harman International Industries, Inc.
.           *
*----------------------------------------------------------------*
* MODULE OR UNIT: HCSCloudConnect                                *
*
* PROGRAMMER :  Ashish Awasthi                                   *
* DATE       :  19/07/20                                         *
* VERSION    :  1.0                                              *
*
*----------------------------------------------------------------*
*
* MODULE SUMMARY : Validate URL request                          *
*
*
*
*
*----------------------------------------------------------------*
*
* TRACEABILITY RECORDS to SW requirements and detailed design :  *
* iOS 10 and onward
*
*
*----------------------------------------------------------------*
*
* MODIFICATION RECORDS                                           *
*
******************************************************************
*/


import Foundation

public extension URLRequest {
    /// Returns the `httpMethod` as CloudService's `HTTPMethod` type.
    var method: HTTPMethod? {
        get { httpMethod.flatMap(HTTPMethod.init) }
        set { httpMethod = newValue?.rawValue }
    }

    func validate() throws {
        if method == .get, let bodyData = httpBody {
            throw CSError.invalidRequest.error(msg: "Get method not supported body infomation. Send with post method:- \(bodyData)")
        }
    }
}
