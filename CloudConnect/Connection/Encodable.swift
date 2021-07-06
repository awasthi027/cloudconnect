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
* DATE       :  18/07/20                                         *
* VERSION    :  1.0                                              *
*
*----------------------------------------------------------------*
*
* MODULE SUMMARY : This is independent extention class of        *
  encodable protocal. we can user direct method to convert class *
  to data and class to dict                                      *
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

extension Encodable {
    var asDictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
    var asData: Data? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return data
    }
}
