//___FILEHEADER___

import Foundation
import MVICocoa

public struct ___FILEBASENAMEASIDENTIFIER___: Model {
  public typealias Entity = ___VARIABLE_entityClass___

  public static let empty = ___FILEBASENAMEASIDENTIFIER___(state: .idle, data: Entity.empty)

  public var state: SyncState
  public var data: ___VARIABLE_entityClass___

  public func copy(state: SyncState? = nil, data: ___VARIABLE_entityClass___? = nil) -> ___FILEBASENAMEASIDENTIFIER___ {
    return ___FILEBASENAMEASIDENTIFIER___(state: state ?? self.state, data: data ?? self.data)
  }
}