namespace tp01Rosenblum_Dagostino.Models;
using System.Data.SqlClient;
using Dapper;
using System.Collections.Generic;
public class Pizzas
{
    private string _Nombre;
    private bool _LibreGluten;
    private double _Importe;
    private string _Descripcion;

    private int _id;

    public Pizzas(string Nombre, bool LibreGluten, double Importe, string Descripcion, int id)
    {
        _Nombre = Nombre;
        _LibreGluten = LibreGluten;
        _Importe = Importe;
        _Descripcion = Descripcion;
        _id = id;
    }
    public Pizzas()
    {
        _Nombre = "";
        _LibreGluten = false;
        _Importe = 0;
        _Descripcion = "";
        _id = 0;
    }


    public string Nombre
    {
        get
        {
            return _Nombre;
        }
        set{
            _Nombre = value;
        }
    }

    public bool LibreGluten
    {
        get
        {
            return _LibreGluten;
        }
        set{
           _LibreGluten = value;
        }
    }
    public double Importe
    {
        get
        {
            return _Importe;
        }
        set{
           _Importe = value;
        }
    }
    public string Descripcion
    {
        get
        {
            return _Descripcion;
        }
        set{
           _Descripcion = value;
        }
    }
    public int id
    {
        get
        {
            return _id;
        }
        set
        {
            _id = value;
        }
    }
}