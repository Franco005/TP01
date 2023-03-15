using Microsoft.AspNetCore.Mvc;
using tp01Rosenblum_Dagostino.Models;
namespace tp01Rosenblum_Dagostino.Controllers;


[ApiController]
[Route("[controller]")]
public class PizzasController : ControllerBase
{
    [HttpGet]
   public IActionResult Get(){
    List<Pizzas> lista = BD.VerPizzas();
    return Ok(lista);
   }
    
    [HttpGet("{id}")]
   public IActionResult Get(int id){

    if(id < 1){
        return BadRequest();
    }

    Pizzas pizza = BD.VerDetallePizzas(id);

    if(pizza == null){
        return NotFound();
    }

    return Ok(pizza);
   }
   [HttpPost]
    public IActionResult Create(Pizzas pizza){
        if(pizza.Nombre == null || pizza.Importe < 0 ){
            return BadRequest();
        }
        
        BD.AgregarPizza(pizza);
        return Ok();
    }

    [HttpPut("{id}")]
    public IActionResult Put(int id, Pizzas pizza)
    {
    if (id < 1)
    {
    return BadRequest();
    }
    if(id!= pizza.id){
        return BadRequest();
    }
    Pizzas pisa = BD.VerDetallePizzas(id);
    if (pisa == null)
    {
    return NotFound();
    }
    if(pizza.Nombre != pisa.Nombre)
        {
        pisa.Nombre = pizza.Nombre;
        }
    BD.ModificarPizza(id, pizza);
    return Ok();
    }

    [HttpDelete("{id}")]
    public IActionResult Delete(int id){
    if(id < 1){
        return BadRequest();
    }
    Pizzas pizza = BD.VerDetallePizzas(id);

    if(pizza == null) {
        return NotFound();
    }
    BD.EliminarPizza(id);
    return Ok();
    }
}
    

