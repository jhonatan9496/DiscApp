//
//  JHOEnviarOfertaMiTrabajoViewController.h
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHOEnviarOfertaMiTrabajoViewController : UIViewController{
    
    IBOutlet UITextField *nombre;
    IBOutlet UITextField *descripcion;
    IBOutlet UITextField *descripcionProducto;
    IBOutlet UITextField *telefono;
    
}

- (IBAction)enviarOferta:(id)sender;

@end
