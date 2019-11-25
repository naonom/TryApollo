//
//  ViewController.swift
//  TryApollo
//
//  Created by Naoki Noma on 2019/11/11.
//  Copyright © 2019 nao noma. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apollo.fetch(query: GetUserQuery) {result in
            guard let data = try? result?.get().data else {return}
            print(data.users!.ID)
            
            
            
            print(result?.data?.users!.ID)
        }
        // Do any additional setup after loading the view.
    }


}

