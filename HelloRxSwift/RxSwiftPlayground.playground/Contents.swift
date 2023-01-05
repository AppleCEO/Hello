import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

Observable.of(2,2,3,4,4)
    .skipWhile { $0 % 2 == 0 }
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
    
