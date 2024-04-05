import express, {Application} from 'express'; 
//Puede ser tambien de esta forma para no declarar variables de esta manera =>"express.Aplication"
import routesProducts from './routes/product.routes'
import cors from 'cors';
import routesUser from './routes/user.routes';
import { Product } from './models/product.model';
import { Users } from './models/user.model';
import validateToken from './routes/validate-token';

class Server {

    private app: Application;
    private port: string | undefined;

    constructor() {

        this.app = express();
        this.port = process.env.PORT;        
        this.midlewares();
        this.routes();
        this.dbConnect();
        this.listen();
    }

    listen() {

        this.app.listen(this.port, ()=>{
            console.log('Aplicacion corriendo en el puerto ' + this.port)
        })
    }

    routes() {

        this.app.use('/api/products', routesProducts);
        this.app.use('/api/user', routesUser)
    }

    midlewares() {

        //Parseo body

        this.app.use(express.json());

        //Cors

        this.app.use(cors());
        this.app.use(express.urlencoded({extended: false}))
    }

    async dbConnect() {

        try {
            
            await Product.sync();
            await Users.sync();
 
        } catch (error){
            console.error('Unable to connect to the database:', error);

        }
            
        }
    }

export default Server;