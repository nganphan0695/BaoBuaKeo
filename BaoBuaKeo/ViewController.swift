
import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var scissorsImage: UIImageView!
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var payperImage: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var randomImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var random = Int.random(in: 1...3)

    var rockButton = UIButton()
    var payperButton = UIButton()
    var scissorsButton = UIButton()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        payperImage.frame = CGRect(
            x: view.center.x - 25,
            y: view.frame.maxY - 150,
            width: 50,
            height: 50)
        payperImage.image = UIImage(named: "bao")
        payperImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        payperImage.layer.cornerRadius = payperImage.bounds.height/2
        
        rockImage.frame = CGRect(
            x: payperImage.frame.minX - 90,
            y: payperImage.frame.minY,
            width: 50,
            height: 50)
        rockImage.image = UIImage(named: "bua")
        rockImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        rockImage.layer.cornerRadius = rockImage.bounds.height/2

        scissorsImage.frame = CGRect(
            x: payperImage.frame.maxX + 40,
            y: payperImage.frame.minY,
            width: 50,
            height: 50)
        scissorsImage.image = UIImage(named: "keo")
        scissorsImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        scissorsImage.layer.cornerRadius = scissorsImage.bounds.height/2
        
        label.frame = CGRect(
            x: 0,
            y: 0,
            width: 200,
            height: 60)
        label.center = view.center
        label.backgroundColor = .white
        label.text = "Let's Play"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 40)
        
        randomImage.transform = randomImage.transform.rotated(by: .pi/2 - 20)
        userImage.transform = userImage.transform.rotated(by: .pi*1.5 + 20)
        
        view.addSubview(rockButton)
        view.addSubview(payperButton)
        view.addSubview(scissorsButton)
        
        rockButton.frame = rockImage.frame
        payperButton.frame = payperImage.frame
        scissorsButton.frame = scissorsImage.frame
        
        rockButton.addTarget(self, action: #selector(rock), for: .touchUpInside)
        payperButton.addTarget(self, action: #selector(payper), for: .touchUpInside)
        scissorsButton.addTarget(self, action: #selector(scissors), for: .touchUpInside)
        
    }
    
    func randomImageView(){
        randomImage.frame = CGRect(
            x: view.bounds.width/4 - 50,
            y: view.center.y - 75,
            width: 100,
            height: 150)
        
        userImage.frame = CGRect(
            x: view.bounds.width/4 * 3 - 75,
            y: view.center.y - 50,
            width: 150,
            height: 100)
        
        userLabel.frame = CGRect(
            x: userImage.frame.minX + 25,
            y: randomImage.frame.maxY + 20,
            width: 100,
            height: 50)
        userLabel.text = "You"
        userLabel.font = UIFont.systemFont(ofSize: 15)
        userLabel.textColor = .black
        
        computerLabel.text = "Computer"
        computerLabel.frame = CGRect(
            x: view.bounds.width/4 - 50,
            y: randomImage.frame.maxY + 20,
            width: 100,
            height: 50)
        computerLabel.font = UIFont.systemFont(ofSize: 15)
        computerLabel.textColor = .black
        
        label.frame = CGRect(
                    x: view.center.x - 250,
                    y: 100,
                    width: 500,
                    height: 60)
        
        if random == 1{
            randomImage.image = UIImage(named: "bua.")
        }
        
        if random == 2 {
            randomImage.image = UIImage(named: "bao.")
        }
        
        if random == 3{
            randomImage.image = UIImage(named: "keo.")
        }

    }
    
    @objc func rock() {
        random = Int.random(in: 1...3)
        userImage.image = UIImage(named: "bua.")
        rockImage.backgroundColor = UIColor(red: 0.99, green: 0.95, blue: 0.84, alpha: 1.00)
        payperImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        scissorsImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        randomImageView()
        
        if random == 1{
            label.text = "DRAW"
        }
        
        if random == 2 {
            label.text = "LOSE"
        }
        
        if random == 3{
            label.text = "WIN"
        }
        
    }
    
    @objc func payper() {
        random = Int.random(in: 1...3)
        userImage.image = UIImage(named: "giay")
        payperImage.backgroundColor = UIColor(red: 0.99, green: 0.95, blue: 0.84, alpha: 1.00)
        rockImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        scissorsImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        randomImageView()
        
        if random == 1{
            label.text = "WIN"
        }
        
        if random == 2 {
            label.text = "DRAW"
        }
        
        if random == 3{
            label.text = "LOSE"
        }
        
    }
    

    @objc func scissors() {
        random = Int.random(in: 1...3)
        userImage.image = UIImage(named: "keo..")
        scissorsImage.backgroundColor = UIColor(red: 0.99, green: 0.95, blue: 0.84, alpha: 1.00)
        rockImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        payperImage.backgroundColor = UIColor(red: 0.97, green: 0.85, blue: 0.51, alpha: 1.00)
        randomImageView()
        
        if random == 1{
            label.text = "LOSE"
        }

        if random == 2 {
            label.text = "WIN"
        }

        if random == 3{
            label.text = "DRAW"
        }
        
    }
    
}



