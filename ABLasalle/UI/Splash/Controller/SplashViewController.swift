//
//  SplashViewController.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 7/10/23.
//

import UIKit

// MARK - PROTOCOLO
protocol SplashViewProtocol: AnyObject {
    func showLoading(_ show: Bool)
    func navigateToHome()
}

// MARK - CLASE -
class SplashViewController: UIViewController {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    // Declaración ViewModel
    var viewModel: SplashViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
}

// MARK - EXTENSION -
extension SplashViewController: SplashViewProtocol {
    
    //Metodo cargar activity indicator
    func showLoading(_ show: Bool) {
        switch show {
        case true where !activityIndicator.isAnimating:
            activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating:
            activityIndicator.stopAnimating()
        default: break
        }
    }
    
    //Metodo para navegar a la home
    func navigateToHome() {
        
        // Creamos el View Controller
        let nextVC = HomeTableViewController()
        
        // Creamos el View Model
        let nextVM = HomeViewModel(viewDelegate: nextVC)
        
        //Inyectamos dependencias con el ViewModel de HomeTableViewController
        nextVC.viewModel = nextVM
        
        navigationController?.setViewControllers([nextVC], animated: true)
    }
}
