//___FILEHEADER___

import Foundation
import MVICocoa
import RxSwift

class ___FILEBASENAMEASIDENTIFIER___: BaseViewModel<___VARIABLE_modelClass___> {
  
  private weak var view: ___VARIABLE_controllerClass___?

  init(view: ___VARIABLE_controllerClass___) {
    self.view = view
  }

  override func attach() {
    super.attach()
    // if no view ignore
    guard let view = view else { return }
    // convert view events into relative intent and pass them pipeline
    disposeBag += view.viewEvents()
      .toIntent(view.container)
      .subscribe(onNext: accept(_ :))
  }
}