//
//  Categories.swift
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

class Categories: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _idCategory: NSNumber?
    var _nmCategory: String?
    
    class func dynamoDBTableName() -> String {

        return "coffer-mobilehub-1272453428-categories"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_idCategory" : "idCategory",
               "_nmCategory" : "nmCategory",
        ]
    }
}
