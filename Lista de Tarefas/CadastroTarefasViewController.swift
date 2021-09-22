//
//  CadastroTarefasViewController.swift
//  Lista de Tarefas
//
//  Created by Leonardo Almeida on 22/09/21.
//

import UIKit

class CadastroTarefasViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        if let textoDigitado = tarefaCampo.text {
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}
