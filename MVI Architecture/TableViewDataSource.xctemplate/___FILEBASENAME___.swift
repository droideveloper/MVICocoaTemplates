//___FILEHEADER___

import Foundation
import UIKit
import MVICocoa

class ___FILEBASENAMEASIDENTIFIER___: NSObject, UITableViewDataSource {

  private let dataSet: ObservableList<___VARIABLE_entityClass___>

  init(dataSet: ObservableList<___VARIABLE_entityClass___>) {
    self.dataSet = dataSet
  }

  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataSet.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let identifier = identifierFor(indexPath)
    let cell = tableView.dequeueReusableCell(withIdentifier: identifier)
    if let cell = cell as? ___VARIABLE_cellClass___ {
      cell.bind(entity: dataSet.get(indexPath.row))
      return cell
    }
    fatalError("we could not resolve cell as \(___VARIABLE_cellClass___.self) for \(identifier)")
  }

  private func identifierFor(_ indexPath: IndexPath) -> String {
    return String.empty // TODO resolve indetifier for indexPath
  }
}