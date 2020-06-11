//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

/// A generic type
public struct CertificationType: Decodable {
    /// The rating displayed
    public let certification: String
    /// A description of the rating
    public let meaning      : String
    /// The position of the certification
    public let order        : Int
}
