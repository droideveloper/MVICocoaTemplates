//___FILEHEADER___

import Foundation
import MVICocoa

class ___FILEBASENAMEASIDENTIFIER___: BaseTableViewController<___VARIABLE_modelClass___, ___VARIABLE_viewModelClass___> {

  private var dataSet = ObservableList<___VARIABLE_entityClass___>()
  private lazy var dataSource = {
    return ___VARIABLE_dataSourceClass___(dataSet: dataSet)
  }()

  override func setUp() {
    // TODO setup view here aka didLoad

    tableView.separatorStyle = .none
		// register data source
		tableView.dataSource = dataSource
  }

  override func attach() {
    super.attach()
    dataSet.register(tableView)
    // TODO implement subscribtions in here
  }

  override func render(model: ___VARIABLE_modelClass___) {
    switch model.state {
      case .idle: break;
      case .failure(let error): break;
      case .operation(let type, _): break
    }
  }

	override func detach() {
		dataSet.unregister(tableView)
		super.detach()
	}
}