//
//  HCSCloudConnect.swift
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
* MODULE SUMMARY : HCSCloud Service Request class                *
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

/// Reference to `Session.default` for quick bootstrapping and examples.
public let HCSCloud = CloudService.default

/// Current CloudService version. Necessary since SPM doesn't use dynamic libraries. Plus this will be more accurate.
internal let libVersion = "0.0.1"

/// Current CloudService Name
internal let libName = "libHCSClouldConnect"
