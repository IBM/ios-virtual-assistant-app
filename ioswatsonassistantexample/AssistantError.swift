/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

// Custom error set
enum AssistantError: Error, CustomStringConvertible {

    case invalidCredentials

    case missingCredentialsPlist

    case missingAssistantCredentials

    case noWorkspacesAvailable

    case noData

    case error(String)

    case noWorkspaceId

    var alertTitle: String {
        switch self {
        case .invalidCredentials: return "Invalid Credentials"
        case .missingCredentialsPlist: return "Missing BMSCredentials.plist"
        case .missingAssistantCredentials: return "Missing Watson Assistant Credentials"
        case .noWorkspacesAvailable: return "No Workspaces Available"
        case .noWorkspaceId: return "No Workspaces Id Provided"
        case .noData: return "Bad Response"
        case .error: return "An Error Occurred"
        }
    }

    var alertMessage: String {
        switch self {
        case .invalidCredentials: return "The provided credentials are invalid."
        case .missingCredentialsPlist: return "Make sure to follow the steps in the README to create the credentials file."
        case .missingAssistantCredentials: return "Make sure to follow the steps in the README to create the credentials file."
        case .noWorkspacesAvailable: return "Be sure to set up a Watson Assistant workspace from the IBM Cloud dashboard."
        case .noWorkspaceId: return "Be sure to set up a Watson Assistant workspace from the IBM Cloud dashboard."
        case .noData: return "No Watson Assistant data was received."
        case .error(let msg): return msg
        }
    }

    var description: String {
        return self.alertTitle + ": " + self.alertMessage
    }
}
