//
//  Network.swift
//  TryApollo
//
//  Created by shotaro-yamada on 2019/12/03.
//  Copyright © 2019 nao noma. All rights reserved.
//
import UIKit
import Apollo

class Network {
  static let shared = Network()

  // ngrokでhttpsのurlを書き込む
  // 書き込むurlは有効なものを使用してください
  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://86a636e8.ngrok.io/graphql")!)
}
