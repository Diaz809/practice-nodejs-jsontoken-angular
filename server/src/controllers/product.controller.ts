import { Request, Response } from "express";
import { Product } from "../models/product.model";

export const getProduct = async (req: Request, res: Response) => {

    const  listProduct = await Product.findAll();

    res.json(listProduct);
}