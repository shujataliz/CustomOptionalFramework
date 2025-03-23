//
//  SDK.swift
//  CustomFramework
//
//  Created by Shujat Ali on 4/12/24.
//



import Foundation

public struct SDK {
    
    private static var isAPIKeyValid = false
    
    private static let apiKeys = [
        "privateKey123"
    ]
    
    private static func checkAPIKey() -> Bool {
        if !isAPIKeyValid {
            print("Please provide a valid API Key")
        }
        return isAPIKeyValid
    }
    
    public static func configure(apiKey: String) {
        isAPIKeyValid = apiKeys.contains(apiKey)
    }
    
    public static func doSomeWork() {
        guard checkAPIKey() else { return }
        print("Doing some work...")
    }
    
    public static func testSDKS() {
        print(#function)
        #if canImport(CrashReporter)
        print("PLCrashReporter is available")
        #endif

        #if canImport(CocoaLumberjack)
        print("CocoaLumberjack is available")
        #endif
        
        
        let available = NSClassFromString("PLCrashReporter") != nil
        print("PLCrashReporter is \(available)")

        let available2 = NSClassFromString("DDLog") != nil
        print("CocoaLumberjack is \(available2)")
    }
}
