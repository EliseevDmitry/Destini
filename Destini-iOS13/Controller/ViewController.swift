import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var myData = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        myData.nextStory(Choice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = myData.getTitle()
        choice1Button.setTitle(myData.getChoice1(), for: .normal)
        choice2Button.setTitle(myData.getChoice2(), for: .normal)
    }
    
}
































