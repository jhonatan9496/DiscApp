//
//  JHOListarOfertasLaboralesViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOListarOfertasLaboralesViewController.h"
#import "JHOCadaOfertaLaboralViewController.h"
#import "JHOCadaOfertaLaboralViewController.h"

@interface JHOListarOfertasLaboralesViewController ()

@end

@implementation JHOListarOfertasLaboralesViewController{

    NSMutableArray *ofertasLaborales;
    
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @" Listado Ofertas Laborales";
    
    
    ofertasLaborales = [[NSMutableArray alloc]init];
    
    if ([_fisica isEqualToString:@"on"]) {
        
        for (int i=0; i<3; i++) {
            NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
            
            [informacionOfertasLaborales  setValue:@"Informacion Oferta Laboral fisica" forKey:@"nombre"];
            [informacionOfertasLaborales setValue:@"Descripcion Oferta Laboral" forKey:@"descripcion"];
            [informacionOfertasLaborales setValue:@"fisica" forKey:@"discapacidad"];
            [ofertasLaborales addObject:informacionOfertasLaborales];
        }
    }
    
    if ([_visual isEqualToString:@"on"]) {
    
    for (int i=0; i<3; i++) {
        NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
        
        [informacionOfertasLaborales  setValue:@"Informacion Oferta Laboral visual" forKey:@"nombre"];
        [informacionOfertasLaborales setValue:@"Descripcion Oferta Laboral" forKey:@"descripcion"];
        [informacionOfertasLaborales setValue:@"visual" forKey:@"discapacidad"];
        [ofertasLaborales addObject:informacionOfertasLaborales];
    }
        
    }
    
    if ([_auditiva isEqualToString:@"on"]) {
    
    for (int i=0; i<3; i++) {
        NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
        
        [informacionOfertasLaborales  setValue:@"Informacion Oferta Laboral Auditiva" forKey:@"nombre"];
        [informacionOfertasLaborales setValue:@"Descripcion Oferta Laboral" forKey:@"descripcion"];
        [informacionOfertasLaborales setValue:@"auditiva" forKey:@"discapacidad"];
        [ofertasLaborales addObject:informacionOfertasLaborales];
    }
    }
    
    if ([_mental isEqualToString:@"on"]) {
    
    for (int i=0; i<3; i++) {
        NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
        
        [informacionOfertasLaborales  setValue:@"Informacion Oferta Laboral mental" forKey:@"nombre"];
        [informacionOfertasLaborales setValue:@"Descripcion Oferta Laboral" forKey:@"descripcion"];
        [informacionOfertasLaborales setValue:@"mental" forKey:@"discapacidad"];
        [ofertasLaborales addObject:informacionOfertasLaborales];
    }
        
    }
    
    if ([_cognitiva isEqualToString:@"on"]) {
    
    for (int i=0; i<3; i++) {
        NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
        
        [informacionOfertasLaborales  setValue:@"Informacion Oferta Laboral cognitiva" forKey:@"nombre"];
        [informacionOfertasLaborales setValue:@"Descripcion Oferta Laboral" forKey:@"descripcion"];
        [informacionOfertasLaborales setValue:@"cognitiva" forKey:@"discapacidad"];
        [ofertasLaborales addObject:informacionOfertasLaborales];
    }
    }
    

    
    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




//------------------------------------------------------------------
//-----------------Numero de secciones en la table -----------------
//------------------------------------------------------------------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
//------------------------------------------------------------------
//-----------------Numero de celdas    en la table -----------------
//------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [ofertasLaborales count];
}

//------------------------------------------------------------------
//-----------------Crea cada celda y le asigna un contenido --------
//------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Celidentifield=@"Cell";
    // extraemos la posicion del arreglo segun la posicion del numero de la celda
    NSDictionary *dic = [ofertasLaborales objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Celidentifield];
    
    if (cell==nil) {
        //  cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Celidentifield];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Celidentifield];
        
    }
    
    cell.textLabel.text = [dic objectForKey:@"nombre"];
    cell.textLabel.accessibilityHint =[dic objectForKey:@"nombre"];
    cell.textLabel.accessibilityLabel =[dic objectForKey:@"nombre"];
    //[cell.textLabel.accessibilityActivate YES ];
    cell.detailTextLabel.text = [dic objectForKey:@"descripcion"];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    // Configure the cell...
    
    return cell;
}
//------------------------------------------------------------------
//-----------------Numero de pixeles de las celdas -----------------
//------------------------------------------------------------------
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
//------------------------------------------------------------------
//-----------------Evento al hacer click en cada celda--------------
//------------------------------------------------------------------
-(void) tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSDictionary *datosBusqueda =[ofertasLaborales objectAtIndex:indexPath.row];
    
    
        JHOCadaOfertaLaboralViewController  *cadaConvocatoria = [self.storyboard instantiateViewControllerWithIdentifier:@"CadaOfertaLaboral"];
        [self.navigationController pushViewController:cadaConvocatoria animated:YES];
    cadaConvocatoria.textTituloOferta =@"esto es una prueba del titulo textTituloOferta";
    cadaConvocatoria.textSector =@"esto es una prueba del titulo textSector";
    cadaConvocatoria.textDescripcion =@"esto es una prueba del titulo Oferta";
    cadaConvocatoria.textRequisitos =@"esto es una prueba del titulo textRequisitos";
    cadaConvocatoria.textFecha =@"esto es una prueba del titulo textFecha";
    cadaConvocatoria.textEncargado =@"esto es una prueba del titulo textEncargado";
    
   //     cadaConvocatoria.textTituloConvocatoria =[datosBusqueda objectForKey:@"nombre"];
   //     cadaConvocatoria.textDeescripcionConvocatoria = [datosBusqueda objectForKey:@"descripcion"];
   //     cadaConvocatoria.textLinkConvocatoria = [datosBusqueda objectForKey:@"link"];
  }

@end
