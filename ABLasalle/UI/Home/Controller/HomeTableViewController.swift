//
//  HomeTableViewController.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 6/10/23.
//

import UIKit
// MARK - PROTOCOLO

protocol HomeTableViewProtocol: AnyObject {
    func navigateToDetail (with data: PlayerModel?)
    func updateViews()
}

// MARK - CLASE -
class HomeTableViewController: UITableViewController {
    // Declaración ViewModel
    var viewModel: HomeViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        viewModel?.onViewsLoaded()
    }
    
    // Función para registrar nuetra celda personalizada
    private func registerCell() {
        tableView.register(UINib(nibName: "HomeCell_TableViewCell", bundle: nil), forCellReuseIdentifier: "homeCell")
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Función para establecer el número de celdas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.dataCount ?? 0
    }
    
    // Función para actualizar Vista
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as? HomeCell_TableViewCell else { return UITableViewCell()}
        
        cell.accessoryType = .disclosureIndicator
        
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
        }
        return cell
    }
    
    // Seleccionar Celda
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
}
// MARK - EXTENSION -
extension HomeTableViewController: HomeTableViewProtocol {
   
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: PlayerModel?) {
        //Creamos el View Controller
        let nextVC = DetailViewController()
        
        //Creamos el View Model
        let nextVM = DetailViewModel(viewDelegate: nextVC)
        
        //Inyectamos dependencias
        nextVC.viewModel = nextVM
        nextVM.data = data
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

