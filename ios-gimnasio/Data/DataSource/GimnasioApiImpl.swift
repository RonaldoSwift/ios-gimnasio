//
//  GimnasioApiImpl.swift
//  ios-gimnasio
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 16/08/22.
//

import Foundation
import Alamofire

class GimnasioApiImpl: GimnasioApi {
    
    func getBrands(getBrandsRequest: GetBrandsRequest) async throws -> [GetBrandsResponse] {

        await withUnsafeContinuation({ (continuation: UnsafeContinuation<[GetBrandsResponse], Never>) in
                    AF.request("http://192.168.0.103:3006/brands")

                        .responseDecodable(of: [GetBrandsResponse].self) { dataResponse in
                            let status = dataResponse.response?.statusCode
                            print("STATUS \(status)")

                            switch dataResponse.result {
                                case .success(let getBrandsResponse):
                                    print(getBrandsResponse)
                                    continuation.resume(returning: getBrandsResponse)
                                    break

                                case .failure(let aferror):
                                    print(aferror)
    //                                continuation.resume(throwing: ExternalError.UnknowError(description: "car"))
                                    break
                            }
                        }

                })


    }
}

private extension GimnasioApiImpl {
    
    struct GimnasioAPI {
        static let scheme = "http"
        static let host = "192.168.0.103"
        static let path = "/brands"
    }
    
    func requestBrandsComponents() -> URLComponents {
        var urlComponents = URLComponents()
        urlComponents.scheme = GimnasioAPI.scheme
        urlComponents.host = GimnasioAPI.host
        urlComponents.path = GimnasioAPI.path
        return urlComponents
    }
    
    
}
