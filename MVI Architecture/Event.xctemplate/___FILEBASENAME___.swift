//___FILEHEADER___

import Foundation
import MVICocoa
import Swinject

public class ___FILEBASENAMEASIDENTIFIER___: Event {

  public init() {
    // TODO provide dependency
  }

  override func toIntent(container: Container?) -> Intent {
    // TODO provide relative dependency here
    return super.toIntent(container: container) // will provide nothing intent if there is no intent relative to this event 
  }
}