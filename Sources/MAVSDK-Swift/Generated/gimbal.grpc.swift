//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: gimbal.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

internal protocol Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall: ClientCallUnary {}

fileprivate final class Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCallBase: ClientCallUnaryBase<Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse>, Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall {
  override class var method: String { return "/mavsdk.rpc.gimbal.GimbalService/SetPitchAndYaw" }
}


/// Instantiate Mavsdk_Rpc_Gimbal_GimbalServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Mavsdk_Rpc_Gimbal_GimbalServiceService: ServiceClient {
  /// Synchronous. Unary.
  func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, metadata customMetadata: Metadata) throws -> Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse
  /// Asynchronous. Unary.
  @discardableResult
  func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, metadata customMetadata: Metadata, completion: @escaping (Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall

}

internal extension Mavsdk_Rpc_Gimbal_GimbalServiceService {
  /// Synchronous. Unary.
  func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest) throws -> Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse {
    return try self.setPitchAndYaw(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, completion: @escaping (Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall {
    return try self.setPitchAndYaw(request, metadata: self.metadata, completion: completion)
  }

}

internal final class Mavsdk_Rpc_Gimbal_GimbalServiceServiceClient: ServiceClientBase, Mavsdk_Rpc_Gimbal_GimbalServiceService {
  /// Synchronous. Unary.
  internal func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, metadata customMetadata: Metadata) throws -> Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse {
    return try Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, metadata customMetadata: Metadata, completion: @escaping (Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall {
    return try Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

class Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCallTestStub: ClientCallUnaryTestStub, Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall {
  override class var method: String { return "/mavsdk.rpc.gimbal.GimbalService/SetPitchAndYaw" }
}

class Mavsdk_Rpc_Gimbal_GimbalServiceServiceTestStub: ServiceClientTestStubBase, Mavsdk_Rpc_Gimbal_GimbalServiceService {
  var setPitchAndYawRequests: [Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest] = []
  var setPitchAndYawResponses: [Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse] = []
  func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, metadata customMetadata: Metadata) throws -> Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse {
    setPitchAndYawRequests.append(request)
    defer { setPitchAndYawResponses.removeFirst() }
    return setPitchAndYawResponses.first!
  }
  @discardableResult
  func setPitchAndYaw(_ request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, metadata customMetadata: Metadata, completion: @escaping (Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse?, CallResult) -> Void) throws -> Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCall {
    let response = try self.setPitchAndYaw(request)
    let callResult = CallResult(success: true, statusCode: .ok, statusMessage: "OK", resultData: nil, initialMetadata: nil, trailingMetadata: nil)
    completion(response, callResult)
    return Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawCallTestStub()
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol Mavsdk_Rpc_Gimbal_GimbalServiceProvider: ServiceProvider {
  func setPitchAndYaw(request: Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, session: Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSession) throws -> Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse
}

extension Mavsdk_Rpc_Gimbal_GimbalServiceProvider {
  internal var serviceName: String { return "mavsdk.rpc.gimbal.GimbalService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/mavsdk.rpc.gimbal.GimbalService/SetPitchAndYaw":
      return try Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSessionBase(
        handler: handler,
        providerBlock: { try self.setPitchAndYaw(request: $0, session: $1 as! Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSession: ServerSessionUnary {}

fileprivate final class Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSessionBase: ServerSessionUnaryBase<Mavsdk_Rpc_Gimbal_SetPitchAndYawRequest, Mavsdk_Rpc_Gimbal_SetPitchAndYawResponse>, Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSession {}

class Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSessionTestStub: ServerSessionUnaryTestStub, Mavsdk_Rpc_Gimbal_GimbalServiceSetPitchAndYawSession {}

