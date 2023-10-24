//
//  PlayerModel.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 5/10/23.
//

import Foundation

typealias PlayersModel = [PlayerModel]

struct PlayerModel {
    var number: String
    var name: String
    var image: String
    var description: String
}

var samplePlayerData: PlayersModel = [
    PlayerModel(number:"03",
                name: "Iván Morán Miró",
                image: "pic_03",
                description: "Es un versátil jugador de baloncesto conocido por su altura, habilidades en la cancha y liderazgo. Ha tenido una destacada carrera en la NBA y la selecciÛn espaÒola, destac·ndose como pÌvot y contribuyendo tanto en la ofensiva como en la defensa."),
    PlayerModel(number:"04",
                name: "Roger Espinosa Alegret",
                image: "pic_04",
                description: "Talentoso pívot  que ha tenido Èxito en la NBA y en la selección española. Destaca por su capacidad defensiva, habilidades de pase y visión en la cancha. Ha sido un jugador clave en varios equipos de la NBA."),
    PlayerModel(number:"08",
                name: "Pablo Moya Mancho",
                image: "pic_08",
                description: "Base  conocido por su habilidad para repartir asistencias y robar balones. Tiene una visión excepcional en la cancha y ha sido una pieza importante en la selección española y en la NBA."),
    PlayerModel(number:"12",
                name: "Francesc Ciurana Castellá",
                image: "pic_12",
                description: "Es una leyenda del baloncesto  y uno de los mejores anotadores en la historia del baloncesto europeo. Su capacidad de tiro y su liderazgo en la cancha lo convierten en una figura icónica del baloncesto español."),
    PlayerModel(number:"46",
                name: "Aitor Iglesias Pubill",
                image: "pic_46",
                description: "Es un talentoso base  con una excelente visión de juego y habilidades para crear oportunidades en la cancha. Ha tenido Èxito tanto en la NBA como en el baloncesto europeo. Y me va a aprobar la práctica."),
]

