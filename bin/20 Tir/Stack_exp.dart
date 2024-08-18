void main(){

  final List<int> stack = [];
  const int length = 5;

  // push(stack: stack, itam: itam, length: length)
}


void push ({required List<int> stack, required int item,required int length}) {
  if (stack.length  + 1 > length){
    print('stack overflow');
    return;
  }
  stack.add(item);
}

int peek ({required List<int> stack  }){
  return stack.last;
}

int pop ({required List<int> stack}){
  int last = stack.last;
  stack.removeLast();

  return last;
}