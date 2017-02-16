//
//  CategoryProfile.swift
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

class CategoryProfile: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _userId: String?
    var _idCategory: NSNumber?
    var _idProfile: String?
    
    class func dynamoDBTableName() -> String {

        return "coffer-mobilehub-1272453428-categoryProfile"
    }
    
    class func hashKeyAttribute() -> String {

        return "_userId"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_userId" : "userId",
               "_idCategory" : "idCategory",
               "_idProfile" : "idProfile",
        ]
    }
}
