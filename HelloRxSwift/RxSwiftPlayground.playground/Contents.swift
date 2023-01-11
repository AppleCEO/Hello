import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

let left = PublishSubject<Int>()
let right = PublishSubject<Int>()

let observable = Observable.combineLatest(left,right,resultSelector:{
    lastLeft, lastRight in
    "\(lastLeft) \(lastRight)"
})

let disposable = observable.subscribe(onNext: { value in
    print(value)
})

left.onNext(45)
left.onNext(50)
right.onNext(1)
left.onNext(30)
right.onNext(99)
right.onNext(2)
