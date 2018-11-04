//___FILEHEADER___

import Foundation
import MVICocoa

public class ___FILEBASENAMEASIDENTIFIER___: ReducerIntent<___VARIABLE_modelClass___> {

  public init() {
    // TODO provide dependency
  }

  public override func invoke() -> Reducer<___VARIABLE_modelClass___> {
    return { model in model.copy(state: ___VARIABLE_syncStateClass___) }
  }
}