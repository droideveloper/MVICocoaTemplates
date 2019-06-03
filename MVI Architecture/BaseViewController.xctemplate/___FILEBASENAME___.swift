//___FILEHEADER___

import Foundation
import MVICocoa

class ___FILEBASENAMEASIDENTIFIER___: BaseViewController<___VARIABLE_modelClass___, ___VARIABLE_viewModelClass___> {

  override func setUp() {
    // TODO setup view here aka didLoad
  }

  override func attach() {
    super.attach()
    // TODO implement subscribtions in here
  }

  override func render(model: ___VARIABLE_modelClass___) {
    switch model.state {
      case .idle: break;
      case .failure(let error): break;
      case .operation(let type, _): break
    }
  }
}