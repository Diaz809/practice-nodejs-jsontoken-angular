import { Request, Response } from "express";
import bcrypt from 'bcrypt';
import { Users } from "../models/user.model";
import jwt from 'jsonwebtoken';

export const newUser = async(req: Request, res: Response) => {

    const { username, password } = req.body;

    const hashedPassword = await bcrypt.hash(password, 10);

    //Validamos si el usuario a sido creado
    const user = await Users.findOne({ where: { username: username } })

    if(user) {
        return res.status(400).json({
            msg: `El usuario ${username} ya existe`
        })
        
    }

    try {
        
        //Se guarda usuario en la base de datos
        await Users.create({

            username: username,
            password: hashedPassword
    
        })
    
        res.json({
            msg: `¡Usuario ${username} creado exitosamente!`
        })

    } catch (error) {

        res.status(400).json({
            msg: "Ups ocurrio un error."
        })
        
    }

}

export const loginUser = async (req: Request, res: Response) => {

    const { username, password } = req.body;

    //Validamos si el usuario ya existe
    const user: any = await Users.findOne({ where: { username: username } })

    if(!user) {
        return res.status(400).json({
            msg: `No existe un usuario con el nombre ${username} en la base de datos`
        })
    }

    //Validamos contraseña
    const passwordValid = await bcrypt.compare(password, user.password)
    
    if(!passwordValid) {
        return res.status(400).json({
            msg: `Contraseña incorrecta`
        })
    }

    //Generamos token
    const token = jwt.sign({
        username: username
    }, process.env.SECRET_KEY || 'lilo123');

    res.json({token});

}