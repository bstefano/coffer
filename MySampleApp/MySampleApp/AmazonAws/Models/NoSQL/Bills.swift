//
//  Bills.swift
//  MySampleApp
//
//
// Copyright 2017 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.10
//

import Foundation
import UIKit
import AWSDynamoDB

class Bills: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _dtDueDate: NSNumber?
    var _idBill: NSNumber?
    var _idCategory: NSNumber?
    var _idPayer: String?
    var _nmBill: String?
    
    class func dynamoDBTableName() -> String {

        return "coffer-mobilehub-1272453428-bills"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_dtDueDate" : "dtDueDate",
               "_idBill" : "idBill",
               "_idCategory" : "idCategory",
               "_idPayer" : "idPayer",
               "_nmBill" : "nmBill",
        ]
    }
}
