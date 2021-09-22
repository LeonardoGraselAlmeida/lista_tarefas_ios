//
//  TarefasTableViewController.swift
//  Lista de Tarefas
//
//  Created by Leonardo Almeida on 22/09/21.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    let tarefaUserDefaults = TarefaUserDefaults()
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tarefas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseCell", for: indexPath)
        let tarefa = tarefas[indexPath.row]
        cell.textLabel?.text = tarefa
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            tarefaUserDefaults.remover(index: indexPath.row)
            atualizarListaTarefas()
        }
    }
    
    func atualizarListaTarefas() {
        tarefas = tarefaUserDefaults.listar()
        tableView.reloadData()
    }
}
