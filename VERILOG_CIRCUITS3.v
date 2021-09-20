module XOR_XORNOT_AND_gates (output d, e, f, y, input a, b, c);
  xor (d, a, b);   // d is the output, a and b are inputs
  xor (e, b, c);  // e is the output, b and c are inputs
  not (f, a);  // f is the output, a is the input
  and (y, a, b, c);  //y is the output , a and b and c are inputs
endmodule