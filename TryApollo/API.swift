//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition =
    """
    query GetUser {
      users {
        __typename
        ID
      }
    }
    """

  public let operationName = "GetUser"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("users", type: .nonNull(.list(.object(User.selections)))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: [User?]) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } }])
    }

    public var users: [User?] {
      get {
        return (resultMap["users"] as! [ResultMap?]).map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } }, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("ID", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "ID": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String? {
        get {
          return resultMap["ID"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "ID")
        }
      }
    }
  }
}
