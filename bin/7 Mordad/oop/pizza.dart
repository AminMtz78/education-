class Pizza{

  String size;
  List<String> toppings;

  Pizza(this.size, this.toppings);

  Pizza.margarita(this.size) : toppings = ['it2m1', 'item2'];

  Pizza.peperoni(this.size) : toppings = ['item3', 'item4'];

  Pizza.fileto(this.size) : toppings = ['item5', 'item6'];


  String desc (){

    return 'size : $size , toppings : $toppings.';
  }
}