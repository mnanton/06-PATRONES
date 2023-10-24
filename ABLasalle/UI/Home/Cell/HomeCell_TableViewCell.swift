//
//  HomeCell_TableViewCell.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 7/10/23.
//

import UIKit

class HomeCell_TableViewCell: UITableViewCell {

    @IBOutlet weak var imagePlayer: UIImageView!
    @IBOutlet weak var lblPlayer: UILabel!
    @IBOutlet weak var lblNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // Inicializamos los valores de los campos, para que no quede información
        lblPlayer.text = nil
        lblNumber.text = nil
        imagePlayer.image = nil
    }
    
    func updateViews(data: PlayerModel?) {
        updateCell(name: data?.name, player: data?.number, photo: data?.image)
    }
            
    private func updateCell (name: String?, player: String?, photo: String?){
        lblPlayer.text = name ?? ""
        lblNumber.text = player ?? ""
        imagePlayer.image = UIImage(named: photo!) ?? UIImage(named: "noPhoto")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
