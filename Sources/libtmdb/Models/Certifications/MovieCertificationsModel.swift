//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

public struct MovieCertificationModel: Decodable {
    /// An object containing a list of certifications by country
    public let certifications: CertificationByCountry
    
    public struct CertificationByCountry: Decodable {
        /// United States ratings
        public let US: [CertificationType]
        /// Canada ratings
        public let CA: [CertificationType]
        /// Denmark ratings
        public let DE: [CertificationType]
        /// Great Britain ratings
        public let GB: [CertificationType]
        /// Australia ratings
        public let AU: [CertificationType]
        /// Brazil ratings
        public let BR: [CertificationType]
        /// France ratings
        public let FR: [CertificationType]
        /// New Zealand ratings
        public let NZ: [CertificationType]
        /// India ratings
        public let IN: [CertificationType]
    }
}
