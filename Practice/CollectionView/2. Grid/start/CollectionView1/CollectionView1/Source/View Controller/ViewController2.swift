import UIKit

final class ViewController2: UIViewController {
  
  private struct Metric {
    // collectionView
    static let numberOfLine: CGFloat = 2
    static let numberOfItem: CGFloat = 2
    static let itemSpacing: CGFloat = 10
    static let lineSpacing: CGFloat = 10
    
    static let leftPadding: CGFloat = 5
    static let rightPadding: CGFloat = 5
    static let topPadding: CGFloat = 10
    static let bottomPadding: CGFloat = 10
  }
  
  // MARK: Properties
  @IBOutlet private weak var collectionView: UICollectionView!
  private var source: [Card] = [] {
    didSet {
      self.collectionView.reloadData()
    }
  }
  
  // MARK: View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView.register(
      UINib(nibName: "CardCell", bundle: nil),
      forCellWithReuseIdentifier: "CardCell"
    )
    fetch()
  }
  
}

// MARK: - Fetch
extension ViewController2 {
  private func fetch() {
    ImageService.image { [weak self] result in
      guard let `self` = self else { return }
      switch result {
      case .success(let cards):
        self.source = cards
      case .failure(let error):
        print(error)
      }
    }
  }
}


// MARK: - UICollectionViewDataSource
extension ViewController2: UICollectionViewDataSource {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return source.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cellData = source[indexPath.item]
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCell
    cell.imageView.image = UIImage(named: cellData.image)
    cell.nameLabel.text = cellData.name
    return cell
  }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController2: UICollectionViewDelegateFlowLayout {
  func collectionView(
    _ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath
  ) -> CGSize {
    let lineSpacing = Metric.lineSpacing * (Metric.numberOfLine - 1)
    let horizontalPadding = Metric.leftPadding + Metric.rightPadding
    let width = (collectionView.frame.width - lineSpacing - horizontalPadding) / Metric.numberOfLine
    
    let itemSpacing = Metric.itemSpacing * (Metric.numberOfItem - 1)
    let verticalPadding = Metric.topPadding + Metric.bottomPadding
    let height = (collectionView)
  }

  func collectionView(
    _ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    minimumLineSpacingForSectionAt section: Int
  ) -> CGFloat {
    return Metric.lineSpacing
  }

  func collectionView(
    _ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    minimumInteritemSpacingForSectionAt section: Int
  ) -> CGFloat {
    return Metric.itemSpacing
  }

  func collectionView(
    _ collectionView: UICollectionView,
    layout collectionViewLayout: UICollectionViewLayout,
    insetForSectionAt section: Int
  ) -> UIEdgeInsets {
    return UIEdgeInsetsMake(Metric.topPadding, Metric.leftPadding, Metric.bottomPadding, Metric.rightPadding)
  }



}

