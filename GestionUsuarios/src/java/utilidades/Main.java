/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilidades;


import Daos.UsuarioDAO;
import Dtos.UsuariosDTO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author Administrador
 */
public class Main {
    
    public static void main(String[] args) throws IOException {
        
    
// try {
//            //Objetos necesarios
//            BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
//           UsuarioDAO odao = new UsuarioDAO();
//            ArrayList<UsuariosDTO> misusuario;
//            UsuariosDTO nodto;
//            Scanner in = new Scanner(System.in);
//
//            //Variables temporalales
//            int op;
//           
//            String actuJornada;
//            
//            //Menú de usuario para opciones de CRUD
//            System.out.println("--Bienvenido--\n");
//            System.out.println("(1) Create [Crear una Jornada]");
//            System.out.println("(2) Read 1 [Mostrar todas las Jornada]");
//            System.out.println("(3) Read 2 [Mostrar una Jornada]");
//            System.out.println("(4) Update [Actualizar datos de una Jornada]");
//            System.out.println("(5) Delete [Eliminar una Jornada]");
//
//            System.out.print("¿Qué desea hacer? = ");
//            op = in.nextInt();
//
//            switch (op) {
//                
//                case 1: {
//                    System.out.println("Crear jornada \n");
//                    System.out.println("digite documento");
//                    int doc = in.nextInt();
//                    System.out.println("digite tipo");
//                    in.nextLine();
//                    String tipod = in.nextLine();
//                    System.out.println("digite nombre");
//                    
//                    String nom = in.nextLine();
//                    System.out.println("digite apellido");
//                    
//                    String ape = in.nextLine();
//                    System.out.println("digite dire");
//                    
//                    String dire = in.nextLine();
//                    System.out.println("digite fecha");
//                    
//                    String fecha = in.nextLine();
//                    System.out.println("digite alias");
//                    
//                    String usu = in.nextLine();
//                    System.out.println("digite cla");
//                    
//                    String cla = in.nextLine();
//                    System.out.println("digite genero");
//                    
//                    String gene = in.nextLine();              
//                    try{
//                   // String mensaje = odao.crearUsuario(new UsuariosDTO(doc, tipod, nom, ape, dire, fecha, usu, cla, gene));
//                   // System.out.println(mensaje);
//                    }catch(NullPointerException np){
//                        System.out.println("error np: "+np.getLocalizedMessage()+ " "+np.getMessage());
//                    }catch(Exception e){
//                        System.out.println("errores: "+e.getLocalizedMessage()+ " "+e.getMessage());
//                    }
//                    
//                }
//                break;
//
//                case 2: 
//                    List<UsuariosDTO> usuario = odao.listarTodos();
//                    System.out.println("\n\nJornadas\n");
//                    if( usuario !=null){
//                        System.out.println("si hay jornadas");
//                         for(UsuariosDTO of:  usuario) {
//                             System.out.println(of + "\n");
//                         }
//                    }else{
//                        System.out.println("no hay jornadas");
//                    }
//                    
//                   
//                break;
//
//                case 3: {
//                    System.out.println("Jornada por ID\n");
//                    System.out.print("Digite el ID de la Jornada: ");
//                   int usuarioid = in.nextInt();
//                    nodto = odao.obtenerUno(usuarioid);
//                    System.out.println("Datos de la Jornadaa\n\n" + nodto);
//                }
//                break;
//
//                case 4: {
//                    System.out.println("Actualizar datos de una Jornada");
//                    System.out.print("Digite el ID de la Jornada: ");
//                    int usuar = in.nextInt();
//                    nodto = odao.obtenerUno(usuar);
//                    
//                    System.out.println("\nDatos de la Jornadacon ID: " + nodto.getDocumento());
//                    System.out.print("-> Fecha Jornada ("+  nodto.getTipoDoc()+" " +nodto.getTipoDoc()  +""+  nodto.getNombres()+""+  nodto.getApellidos()+""+  nodto.getFechadenacimiento()+""+  nodto.getUsuario()+""+  nodto.getClave()+""+  nodto.getGenero()+"");
//                    System.out.println("digite tipo doc");
//                    String tipo = bf.readLine();
//                    nodto.setTipoDoc(tipo);
//                    
//                    
//                    
//                 //   nodto = new UsuariosDTO(op, tipo, tipo, tipo, tipo, tipo, tipo, tipo, tipo);
//                    System.out.println();
//
//                }
//                break;
//
////            case 5: {
////                System.out.println("Eliminar una Jornada");
////                System.out.print("Digite el ID de la Jornada: ");
////                usuari = in.nextInt();
////                System.out.println(odao.eliminarUsuario(nodto));
////            }
////            break;
//        }
//
//        //Registrar una oferta en la base de datos
//    } catch (IOException ex) {
//        System.out.println("Error, detalle " + ex.getMessage());
//   }
    }


}