//
//  File.swift
//  
//
//  Created by Mason Phillips on 6/10/20.
//

import Foundation

public struct TVShowCertificationsModel: Decodable {
    /// An object containing a list of certifications by country
    public let certifications: CertificationByCountry
    
    public struct CertificationByCountry: Decodable {
        /// United States ratings
        public let US: [CertificationType]
        /// Canada ratings
        public let CA: [CertificationType]
        /// Australia ratings
        public let AU: [CertificationType]
        /// France ratings
        public let FR: [CertificationType]
        /// Russia ratings
        public let RU: [CertificationType]
        /// Denmark ratings
        public let DE: [CertificationType]
        /// Thailand ratings
        public let TH: [CertificationType]
        /// Korea ratings
        public let KR: [CertificationType]
        /// Great Britain ratings
        public let GB: [CertificationType]
        /// Brazil ratings
        public let BR: [CertificationType]
    }
}
