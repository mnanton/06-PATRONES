//
//  DetailViewController.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 8/10/23.
//

import UIKit

// MARK - PROTOCOLO
protocol DetailViewProtocol: AnyObject {
    func updateView(player: String?, dorsal: String?, description: String?, photo: String?)
}

// MARK - CLASE -
class DetailViewController: UIViewController {
        
    @IBOutlet weak var imagePlayer: UIImageView!
    @IBOutlet weak var lblJugador: UILabel!
    @IBOutlet weak var lblDorsal: UILabel!
    @IBOutlet weak var lblDescription: UITextView!

    var viewModel: DetailViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.onViewsLoaded()
    }
}

// MARK - EXTENSION -
extension DetailViewController: DetailViewProtocol {
    
    func updateView(player: String?, dorsal: String?, description: String?, photo: String?) {
        lblJugador.text = player ?? ""
        lblDorsal.text = dorsal ?? ""
        lblDescription.text = description ?? ""
        imagePlayer.image = UIImage(named: photo ?? "noPhoto")
    }
}
