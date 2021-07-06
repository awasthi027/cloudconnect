//  CSQueqe.swift
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
* DATE       :  06/10/20                                         *
* VERSION    :  1.0                                              *
*
*----------------------------------------------------------------*
*
* MODULE SUMMARY : This is custom generic queue class which      *
 will serve. FIFO operations                                     *
 
*
*
*
*
*----------------------------------------------------------------*
*
* TRACEABILITY RECORDS to SW requirements and detailed design :  *
* iOS 12 and onward
*
*
*----------------------------------------------------------------*
*
* MODIFICATION RECORDS                                           *
*
******************************************************************
*/

import Foundation

struct CSQueue<T> {
    /// Contain list of items
    var list: [T] = []
    
    /// Appending item in list
    /// - Parameter element: Generic elements
    mutating func enQueue(_ element: T) {
        list.append(element)
    }
    /// deleted item from the list at first place
    /// - Returns: return deleted item
    mutating func deQueue() ->T? {
        if list.isEmpty {
            return nil
        }else {
            return list.removeFirst()
        }
    }
    /// Picking  first item
    /// - Returns: retrurn picked item
    mutating func peek() ->T? {
        if list.isEmpty {
            return nil
        }else {
            return list.first
        }
    }
    /// Checking list whether its empty or not
    /// - Returns: return the status
    func isEmptyList() -> Bool {
        return self.list.isEmpty
    }
}

