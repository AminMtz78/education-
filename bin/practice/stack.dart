void main(){

  List<int> stack = [];
  pushStack(stack, 54, 5);
  print(stack);

}

void pushStack (List<int> stack, int item, int length){
  if (stack.length > length){
    print('stack over flow');
  }
  else  {
    stack.add(item);
  }

}

int pipStack (List<int> stack, int item){
  return stack.last;
}



int popStack ({required List<int> stack, required int itam}){

  int last = stack.last;
  stack.removeLast();
  return last;
}
