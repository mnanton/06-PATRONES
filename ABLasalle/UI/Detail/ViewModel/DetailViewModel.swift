//
//  DetailViewModel.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 8/10/23.
//

import Foundation

// MARK - PROTOCOLO
protocol DetailViewModelProtocol {
    func onViewsLoaded()
}

// MARK - CLASE -
final class DetailViewModel {
    private weak var viewDelegate: DetailViewProtocol?
    //Data recibida de la selección del TableView
    var data: PlayerModel?
    
    init(viewDelegate: DetailViewProtocol) {
        self.viewDelegate = viewDelegate
    }
}

// MARK - EXTENSION -
extension DetailViewModel: DetailViewModelProtocol {
    
    func onViewsLoaded() {
        viewDelegate?.updateView(player: data!.name, dorsal: data!.number, description: data!.description, photo: data!.image)
    }
}
