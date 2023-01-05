//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by joon-ho kil on 2023/01/05.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Observable.from([1,2,3,4,5])
    }


}

