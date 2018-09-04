//
//  DetailViewController.swift
//  MovieReviews
//
//  Created by YJ Soon on 4/9/18.
//  Copyright © 2018 YJ Soon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        if let movie = movie {
            self.title = "\(movie.name!) (\(movie.year))"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var movie: Movie? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

