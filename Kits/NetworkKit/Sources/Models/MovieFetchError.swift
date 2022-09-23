
import Foundation

public enum MovieFetchError: Error {
    case statusCode
    case undefined
    case other(Error)

    static func map(_ error: Error) -> MovieFetchError {
        return (error as? MovieFetchError) ?? .other(error)
    }
}
