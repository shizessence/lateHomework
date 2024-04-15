import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let hello: UILabel = {
    let hello = UILabel()
        hello.text = "Hello there,"
        hello.textColor = .init(red: 100/255, green: 100/255, blue: 50/255, alpha: 1)
        hello.font = .boldSystemFont(ofSize: 35)
    return hello
    }()
    
    let noAccount: UILabel = {
    let noAccount = UILabel()
        noAccount.text = "Don't have an account?"
        noAccount.textColor = .gray
    return noAccount
    }()
    
    let loginTo: UILabel = {
    let loginTo = UILabel()
        loginTo.text = "Login to your account"
        loginTo.textColor = .init(red: 100/255, green: 100/255, blue: 50/255, alpha: 1)
        loginTo.font = .italicSystemFont(ofSize: 20)
    return loginTo
    }()
    
    lazy var usernameInput: UITextField = {
    let usernameInput = UITextField()
        usernameInput.text = "Username"
        usernameInput.backgroundColor = .gray
        usernameInput.layer.cornerRadius = 8
    return usernameInput
    }()
    
    lazy var passwordInput: UITextField = {
    let passwordInput = UITextField()
        passwordInput.text = "Password"
        passwordInput.backgroundColor = .gray
        passwordInput.layer.cornerRadius = 8
    return passwordInput
    }()
    
    let loginButton: UIButton = {
       let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .black
        loginButton.layer.cornerRadius = 15
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()

    let sign: UIButton = {
       let sign = UIButton()
        sign.setTitle("Sign up", for: .normal)
        sign.setTitleColor(.black, for: .normal)
        sign.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        sign.translatesAutoresizingMaskIntoConstraints = false
        return sign
    }()

override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(loginButton)
        view.addSubview(hello)
        view.addSubview(usernameInput)
        view.addSubview(loginTo)
        view.addSubview(noAccount)
        view.addSubview(sign)
        view.addSubview(passwordInput)
        
    noAccount.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(100)
        }
        
    loginButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
        make.height.equalTo(usernameInput)
        }
        
    hello.snp.makeConstraints { make in
        make.left.equalToSuperview().offset(30)
            make.centerY.equalToSuperview().offset(-250)
        }
        
    loginTo.snp.makeConstraints { make in
        make.left.equalToSuperview().offset(30)
        make.centerY.equalTo(hello).offset(35)
            make.width.equalTo(hello)
        }
        
    usernameInput.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.centerY.equalToSuperview().offset(-150)
                    make.width.equalToSuperview().offset(-50)
                    make.height.equalTo(50)
        }
    
    passwordInput.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.centerY.equalToSuperview().offset(-80)
                        make.width.equalToSuperview().offset(-50)
                        make.height.equalTo(50)
        }
                    
    sign.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(130)
                }
            }
    @objc func buttonTapped() {
            print("Tapped")
            navigationController?.pushViewController(ViewController2(), animated: true)
        }
        }
