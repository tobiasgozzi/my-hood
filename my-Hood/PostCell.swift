
import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var postTitel: UILabel!
    @IBOutlet weak var postDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configurePost(post: Post) {
        postDesc.text = post.postDesc
        postTitel.text = post.title
        postImg.image = DataService.instance.imageForPath(post._imagePath)
        
        postImg.layer.cornerRadius = postImg.frame.width/2
        postImg.clipsToBounds = true
    }
}
