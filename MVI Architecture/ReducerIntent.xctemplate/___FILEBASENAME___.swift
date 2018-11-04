//___FILEHEADER___

import Foundation
import MVICocoa

class ___FILEBASENAMEASIDENTIFIER___: ReducerIntent<___VARIABLE_modelClass___> {

  init() {
    // TODO provide dependency
  }

  override func invoke() -> Reducer<___VARIABLE_modelClass___> {
    return { model in model.copy(state: ___VARIABLE_syncStateClass___) }
  }
}