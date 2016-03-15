//
//  ViewController.swift
//  OneSkyOTADemo-Swift
//
//  Created by Alberto Pasca on 15/03/16.
//  Copyright © 2016 albertopasca.it. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

        /*
        For security reason you might not want to embed the API secret in
        the source code of your application, in this case you can skip the
        API secret by setting the string output API privacy to public,
        Go to "Project settings > Privacy > String out API" on OneSky platform
        for details.
        */
        OneSkyOTAPlugin.provideAPIKey("Kc9XXu3bsFpAJsDI6BjX08WoRtYLPhtp", APISecret: nil, projectID: "32417")
        OneSkyOTAPlugin.checkForUpdate()

        // Test OSLocalizedString calls
        NSLog( "Monday = %@",  OSLocalizedStringSwift("Monday", nil)  );
        NSLog( "Tuesday = %@", OSLocalizedStringSwift("Tuesday", nil) );

        // Force language
        OneSkyOTAPlugin.setLanguage("pt-PT");

        // Enable debug option, default is YES
        OneSkyOTAPlugin.setDebug(true);

    }

}

