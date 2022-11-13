


// FibonacciElement.asm results from translating both Main.vm and Sys.vm into
// a single assembly program, stored in the file FibonacciElement.asm.

load FibonacciElement.asm,
output-file FibonacciElement.out,
compare-to FibonacciElement.cmp,
output-list RAM[0]%D1.6.1 RAM[261]%D1.6.1;

repeat 6000 {
  ticktock;
}

output;
