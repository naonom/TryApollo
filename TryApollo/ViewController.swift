//
//  ViewController.swift
//  TryApollo
//
//  Created by shotaro-yamada on 2019/11/11.
//  Copyright © 2019 nao noma. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Network.shared.apollo.fetch(query: GetUserQuery()) {result in
            guard let data = try? result.get().data else {return}
            
            // usersは配列で返ってくるのでArrayListで受け取る
            // クエリに関してはhttp://localhost:4000/graphqlで確認できる
            print(data.users)
        }
        // Do any additional setup after loading the view.
    }


}

