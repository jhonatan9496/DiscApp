//
//  JHOCadaOfertaLaboralViewController.h
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHOCadaOfertaLaboralViewController : UIViewController


//Retiene valores de la vista
@property (nonatomic, strong) NSString *textTituloOferta;
@property (nonatomic, strong) NSString *textSector;
@property (nonatomic, strong) NSString *textDescripcion;
@property (nonatomic, strong) NSString *textRequisitos;
@property (nonatomic, strong) NSString *textFecha;
@property (nonatomic, strong) NSString *textEncargado;

@property (strong, nonatomic) IBOutlet UILabel *labelTituloOferta;
@property (strong, nonatomic) IBOutlet UILabel *labelSector;
@property (strong, nonatomic) IBOutlet UILabel *labelDescripcion;
@property (strong, nonatomic) IBOutlet UILabel *LabelRequisito;
@property (strong, nonatomic) IBOutlet UILabel *labelFechaInicio;
@property (strong, nonatomic) IBOutlet UILabel *labelEncargado;

- (IBAction)LlamarEncargadoOfertaLaboral:(id)sender;
@end
