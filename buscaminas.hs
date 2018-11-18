{-
-----------------------------------------------------------------------------------
Autor: Ángel Zenteno Urquidi
Juego: Buscaminas
Fecha: 17/11/2018
-----------------------------------------------------------------------------------
Parte lógica de Buscaminas
-----------------------------------------------------------------------------------
-}

--cabal install random
import System.Random

--Tipo de datos celda
data Celda = Vacio | Numero | Mina deriving Show

--Tipo de datos tabla, que es una matriz de celdas
data Tabla = T [[Celda]] deriving Show

--Constantes para el juego--------------
filas = 10
columnas = 10
cantidadMinas = 8

--Devuelve una tabla vacía
crearTabla = T [[Vacio |x <- [1..columnas]] | y <- [1..filas]]

--Cambia un valor en la tabla en coordenadas x y, los parámetros i j sirven para recorrer la tabla

cambiarValorTabla (T ts) = [ts!!y | y <- [1..filas]]

--Poner minas en una tabla
--ponerMina (T (t:ts)) x y =    

--Mostrar tabla
mostrarTabla (T []) = print ""
mostrarTabla (T (t:ts)) = do
                            print t
                            mostrarTabla (T ts)