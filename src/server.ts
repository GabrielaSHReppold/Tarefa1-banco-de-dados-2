import "dotenv/config";
import cors from "cors";
import express, {Request, Response } from "express";

// Cria a instância do app Express
const app = express();

// Middleware para permitir requisições de qualquer origem
app.use(cors()); 


// Rota padrão
app.get("/", (request: Request , response: Response) => {
    response.status(200).json({ message: "api Prisma"})
});

app.use (express.json())
//Iniciar o servidor
app.listen(process.env.PORT, () => {
    console.log('Servidor rodando na porta', process.env.PORT);
});
