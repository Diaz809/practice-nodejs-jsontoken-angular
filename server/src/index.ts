import dontenv from "dotenv";
import Server from "./server";

//Configuración dontenv
dontenv.config();

const server = new Server();
