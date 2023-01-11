import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

let left = PublishSubject<Int>()
let right = PublishSubject<Int>()

let source = Observable.of(left.asObservable(),right.asObserver())

let observable = source.merge()
observable.subscribe(onNext: {
    print($0)
}).disposed(by: disposeBag)

left.onNext(5)
left.onNext(3)
right.onNext(2)
right.onNext(1)
left.onNext(92)
