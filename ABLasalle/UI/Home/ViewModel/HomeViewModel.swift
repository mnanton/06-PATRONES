//
//  HomeViewModel.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 6/10/23.
//

import Foundation

// MARK - PROTOCOLO
protocol HomeViewModelProtocol {
    var dataCount: Int { get }
    func onViewsLoaded()
    func data(at index: Int)->PlayerModel?
    func onItemSelected( at index: Int)
}


// MARK - CLASE -
final class HomeViewModel {
    
    private weak var viewDelegate: HomeTableViewProtocol?
    private var viewData = PlayersModel()
    
    init(viewDelegate: HomeTableViewProtocol?) {
        self.viewDelegate = viewDelegate
    }
    
    private func LoadData(){
        viewData = samplePlayerData
        viewDelegate?.updateViews()
    }
}

// MARK - EXTENSION -
extension HomeViewModel: HomeViewModelProtocol {
    
    func onItemSelected(at index: Int) {
        guard let data = data (at: index) else {return}
        // Notificar a la vista, que continue a la Vista Detalle
        viewDelegate?.navigateToDetail(with: data)
    }
    
    func data(at index: Int) -> PlayerModel? {
        guard index < dataCount else {
            return nil
        }
        return viewData[index]
    }
      
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        LoadData()
    }
}
