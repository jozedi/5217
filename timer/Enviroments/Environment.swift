//
//  Environment.swift
//  timer
//
//  Created by Jose Diaz on 1/04/18.
//  Copyright © 2018 Jose Diaz. All rights reserved.
//

import Foundation

public enum PlistKey {
    case URL_BASE
    case ENABLE_ANALITYCS
    case LOG
    
    func value() -> String {
        switch self {
        case .URL_BASE:
            return "URL_BASE"
        case .ENABLE_ANALITYCS:
            return "ENABLE_ANALITYCS"
        case .LOG:
            return "LOG"
        }
    }
}

/**
 ````
 let urlBase = Environment().configuration(URL_BASE)
 print(urlBase)
 ````
 */
public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            } else {
                fatalError("Plist file not found")
            }
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .URL_BASE:
            return infoDict[PlistKey.URL_BASE.value()] as! String
        case .ENABLE_ANALITYCS:
            return infoDict[PlistKey.ENABLE_ANALITYCS.value()] as! String
        case .LOG:
            return infoDict[PlistKey.LOG.value()] as! String
        }
    }
}
