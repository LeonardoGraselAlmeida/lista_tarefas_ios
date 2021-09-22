//
//  TarefaUserDefault.swift
//  Lista de Tarefas
//
//  Created by Leonardo Almeida on 22/09/21.
//

import UIKit

class TarefaUserDefaults {
    let key = "LISTA_TAREFA"
    var tarefas: [String] = []
    
    func salvar(tarefa: String) {
        tarefas = listar()
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: key)
    }
    
    func listar() -> Array<String> {
        let dados = UserDefaults.standard.object(forKey: key )
        
        if dados !=  nil {
            return dados as! Array<String>
        }
        
        return []
    }
    
    func remover(index: Int) {
        tarefas = listar()
        tarefas.remove(at: index)
        UserDefaults.standard.set(tarefas, forKey: key)
    }
}
