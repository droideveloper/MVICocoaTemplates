//___FILEHEADER___

import Foundation
import MVICocoa
import RxSwift

public class ___FILEBASENAMEASIDENTIFIER___: ObservableIntent<___VARIABLE_modelClass___> {

  public init() {
    // TODO provide dependency
  }

  public override func invoke() -> Observable<Reducer<___VARIABLE_modelClass___>> {
    return Observable.never() // TODO implement your repository logic here
      .subscribeOn(MainScheduler.asyncInstance)
      .delay(0.5, scheduler: MainScheduler.asyncInstance)
      .map(bySuccess(_ :))
      .catchError(byFailure(_ :))
      .startWith(byInitial())
  }

  private func byInitial() -> Reducer<___VARIABLE_modelClass___> {
    return { model in model.copy(state: ___VARIABLE_syncStateClass___) }
  }

  private func bySuccess(_ data: ___VARIABLE_entityClass___) -> Reducer<___VARIABLE_modelClass___> {
    return { model in model.copy(state: idle, data: ___VARIABLE_entityClass___) }
  }

  priate func byFailure(_ error: Error) -> Observable<Reducer<___VARIABLE_modelClass___>> {
    return Observable.of(
      { model in model.copy(state: Failure(error)) },
      { model in model.copy(state: idle) })
  }
}