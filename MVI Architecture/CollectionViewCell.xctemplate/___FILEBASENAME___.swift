//___FILEHEADER___

import Foundation
import UIKit
import MVICocoa

class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewCell {

  private let disposeBag = CompositeDisposeBag()

  override func prepareForReuse() {
    super.prepareForReuse()
    disposeBag.clear()
  }

  func bind(entity: ___VARIABLE_entityClass___) {
    // TODO bind data into view
  }
}