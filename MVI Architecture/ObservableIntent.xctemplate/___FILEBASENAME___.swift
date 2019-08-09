//___FILEHEADER___

import Foundation
import MVICocoa
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: ObservableIntent<___VARIABLE_modelClass___> {

  override func invoke() -> Observable<Reducer<___VARIABLE_modelClass___>> {
    return Observable.never() // TODO implement your repository logic here
      .concatMap(success(_ :))
      .catchError(failure(_ :))
      .startWith(initial())
      .subscribeOn(MainScheduler.asyncInstance)
  }

  private func initial() -> Reducer<___VARIABLE_modelClass___> {
    return { o in o.copy(state: ___VARIABLE_syncStateClass___, data: .empty) }
  }

  private func success(_ resource: Resource<___VARIABLE_entityClass___>) -> Observable<Reducer<___VARIABLE_modelClass___>> {
    switch resource {
      case .success(_, let data, _): return Observable.of(
        { o in o.copy(state: ___VARIABLE_syncStateClass___, data: data ?? .empty) },
        { o in o.copy(state: .idle, data: .empty) })
      case .failure(let code, _, let messageFriendly): return Observable.of(
        { o in o.copy(state: .failure(NSError(domain: messageFriendly, code: code, userInfo: nil))) },
        { o in o.copy(state: .idle) })  
    }
  }

  private func failure(_ error: Error) -> Observable<Reducer<___VARIABLE_modelClass___>> {
    return Observable.of(
      { o in o.copy(state: .failure(error)) },
      { o in o.copy(state: .idle) })
  }
}