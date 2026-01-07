//
//  ViagemTableViewCell.swift
//  AluraViagens
//
//  Created by Alex Souza on 21/12/25.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var backgroundViagemView: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var titleViagemLabel: UILabel!
    @IBOutlet weak var subtitleViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoOriginalLabel: UILabel!
    @IBOutlet weak var precoPromocaoLabel: UILabel!
    @IBOutlet weak var cancelamentoLabel: UILabel!
    
    func configuraCelula(_ viagem: Viagem?) {
        self.viagemImage.image = UIImage(named: viagem?.asset ?? "")
        self.titleViagemLabel.text = viagem?.titulo
        self.subtitleViagemLabel.text = viagem?.subtitulo
        self.diariaViagemLabel.text = buildDiariaTexto(viagem?.diaria, viagem?.hospedes)
        self.precoPromocaoLabel.text = "R$ \(viagem?.preco ?? 0)"
        self.precoOriginalLabel.attributedText = buildPrecoOriginal(viagem?.precoSemDesconto)
        
        DispatchQueue.main.async {
            self.backgroundViagemView.addSombra()
        }
    }
    
    func buildPrecoOriginal(_ preco: Double?) -> NSAttributedString {
        let atributoTexto = NSMutableAttributedString(string: "R$ \(preco ?? 0)")
        atributoTexto.addAttribute(.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoTexto.length))
        
        return atributoTexto
    }
    
    func buildDiariaTexto(_ quantidadeDiarias: Int?, _ quantidadeHospedes: Int?) -> String {
        let quantidadeDiarias = quantidadeDiarias ?? 0
        let quantidadeHospedes = quantidadeHospedes ?? 0

        let diariasTexto = quantidadeDiarias == 1 ? "Diária" : "Diárias"
        let hospedesTexto = quantidadeHospedes == 1 ? "Pessoa" : "Pessoas"
        
        return "\(quantidadeDiarias) \(diariasTexto) - \(quantidadeHospedes) \(hospedesTexto)"
    }
    
}
