
import Foundation

public struct Movie: Codable, Identifiable {
    public let id: Int
    public let title: String
    public let poster_path: String?
    public let release_date: String?
    public let overview: String?
    public let vote_avarage: Float?


    public init(
        id: Int,
        title: String,
        poster_path: String?,
        release_date: String?,
        vote_avarage: Float?,
        overview: String?
    ) {
        self.id = id
        self.title = title
        self.poster_path = poster_path
        self.release_date = release_date
        self.vote_avarage = vote_avarage
        self.overview = overview
    }
}
