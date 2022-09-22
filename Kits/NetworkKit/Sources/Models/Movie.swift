
import Foundation

public struct Movie: Codable, Identifiable {
  public let id: Int
  public let title: String
  public let posterPath: String?
  public let releaseDate: String?

  public var posterURL: URL? {
    guard
      let posterPath = posterPath,
      !posterPath.isEmpty
    else {
      return nil
    }

    let baseImageURLString = "https://image.tmdb.org/t/p/w92"
    guard let imageURL = URL(string: baseImageURLString) else {
      return nil
    }

    var components = URLComponents(
      url: imageURL,
      resolvingAgainstBaseURL: false)
    components?.path.append(posterPath)
    return components?.url
  }

  public init(
    id: Int,
    title: String,
    posterPath: String?,
    releaseDate: String?
  ) {
    self.id = id
    self.title = title
    self.posterPath = posterPath
    self.releaseDate = releaseDate
  }
}
