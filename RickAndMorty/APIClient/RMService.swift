//
//  RMService.swift
//  RickAndMorty
//
//  Created by Dhandeep  Singh on 17/12/23.
//

import Foundation

/// Primary API Service object to get Rick and Morty data
final class RMService {
    /// Shared singlleton instance
    static let shared = RMService()
    
    /// privatized constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data  or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
