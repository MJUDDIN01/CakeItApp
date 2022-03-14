//
//  MainCoordinator.swift
//  CakeItApp
//
//  Created by Jasim Uddin on 14/03/2022.
//

import Foundation
import UIKit

protocol Coordinator:AnyObject {
    var navigationController: UINavigationController { get set }
    func start()
    func goToCakeDetails(cakeDetails: CakeDetails)
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard  let vc =  UIStoryboard(name:"Main", bundle: nil).instantiateViewController(identifier:"CakeListViewController") as? CakeListViewController else {
            return
        }
        vc.coordinator = self
        vc.viewModel = CakeListViewModel(delegate:vc)
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToCakeDetails(cakeDetails: CakeDetails) {
        let vm =  CakeDetailsViewModel(cakeDetails: cakeDetails)
        let viewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(
                    identifier: "CakeDetailViewController",
                    creator: { coder in
                        CakeDetailViewController(viewModel: vm, coder: coder)
                    }
                )

        navigationController.pushViewController(viewController, animated: false)
    }
    
}

