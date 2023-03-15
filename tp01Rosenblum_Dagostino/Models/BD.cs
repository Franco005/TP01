namespace tp01Rosenblum_Dagostino.Models;
using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
using System;

public class BD {
     private static string _connectionString = @"Server=A-PHZ2-CIDI-022;DataBase=DAI-Pizzas;Trusted_Connection=True";
   
    public static void EliminarPizza(int id){
        string sql = "DELETE FROM Pizzas WHERE Id = @pId";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(sql, new { pId = id});
        }
    }

    public static Pizzas VerDetallePizzas(int id){
        Pizzas list;
        using(SqlConnection db = new SqlConnection(_connectionString)){
        string sql = "SELECT * FROM Pizzas where Id = @pId";
            list = db.QueryFirstOrDefault<Pizzas>(sql, new{pId = id});
        }
        return list;
    }
    public static void AgregarPizza(Pizzas pizza){
        string sql = "INSERT INTO Pizzas VALUES (@pNombre, @pLibreGluten, @pImporte, @pDescripcion)";
        using(SqlConnection db = new SqlConnection(_connectionString)){
            db.Execute(sql, new {pNombre = pizza.Nombre, pLibreGluten = pizza.LibreGluten, pImporte = pizza.Importe, pDescripcion = pizza.Descripcion});
        }
    }
    
        
    public static List<Pizzas> VerPizzas(){
    List<Pizzas> pizzas = new List<Pizzas>();
    string sql = "SELECT * FROM Pizzas";
    using(SqlConnection db = new SqlConnection(_connectionString)){
            pizzas = db.Query<Pizzas>(sql).ToList();
     }
        return pizzas;
    }
     public static void ModificarPizza(int id, Pizzas pizza)
    {
        using (SqlConnection connection = new SqlConnection(_connectionString))
        {
            connection.Execute("UPDATE Pizzas SET Nombre = @pNombre,LibreGluten = @pLibreGluten, Importe = @pImporte, Descripcion = @pDescripcion  WHERE Id = @pId", new {pId = id, pNombre = pizza.Nombre, pLibreGluten = pizza.LibreGluten, pImporte = pizza.Importe, pDescripcion = pizza.Descripcion});
        }
    }

}