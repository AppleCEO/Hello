import UIKit
import RxSwift
import RxCocoa

let strikes = PublishSubject<String>()
let disposeBag = DisposeBag()

strikes
    .elementAt(2)
    .subscribe(onNext: { _ in
        print("You are out!")
    }).disposed(by: disposeBag)

strikes.onNext("X")
strikes.onNext("X")
strikes.onNext("X")
