//
//  ErrorMessage.swift
//  project from google
//
//  Created by Dilnura Rizaeva on 07.05.2024.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created invalid request. please try again"
    case unableToComplete  = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server.Plese try again"
    case invalidData = "The data receieved from the server was invalid. Please try again"
}
