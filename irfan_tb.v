module irfan_tb;

  // Inputs
  reg clk;
  reg rst;
  reg ir1;
  reg ir2;
  reg ir3;
  reg ir4;
  
  // Outputs
  wire led1;
  wire led2;
  wire buz;
  wire mot;
  wire [6:0] hex0;
  wire [6:0] hex1;
  wire [6:0] hex2;
  wire [6:0] hex3;
  wire [6:0] hex4;
  wire [6:0] hex5;

  // Instantiate the irfan module
  irfan dut (
    .clk(clk),
    .rst(rst),
    .ir1(ir1),
    .ir2(ir2),
    .ir3(ir3),
    .ir4(ir4),
    .led1(led1),
    .led2(led2),
    .buz(buz),
    .mot(mot),
    .hex0(hex0),
    .hex1(hex1),
    .hex2(hex2),
    .hex3(hex3),
    .hex4(hex4),
    .hex5(hex5)
  );

  // Clock generation
  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end
  
  // Stimulus
  initial begin
    // Initialize inputs
    rst = 1;
    ir1 = 0;
    ir2 = 0;
    ir3 = 0;
    ir4 = 0;
    
    #10;
    rst = 0; // Deassert reset
    
    // Test case 1 - Idle state
    #20;
    ir1 = 1;
    ir2 = 1;
    ir3 = 1;
    ir4 = 1;
    
    // Test case 2 - IR1 triggered
    #20;
    ir1 = 0;
    ir2 = 1;
    ir3 = 1;
    ir4 = 1;
    
    // Test case 3 - IR2 triggered
    #20;
    ir1 = 1;
    ir2 = 0;
    ir3 = 1;
    ir4 = 1;
    
    // Test case 4 - IR3 triggered
    #20;
    ir1 = 1;
    ir2 = 1;
    ir3 = 0;
    ir4 = 1;
    
    // Test case 5 - IR4 triggered
    #20;
    ir1 = 1;
    ir2 = 1;
    ir3 = 1;
    ir4 = 0;
    
    // End simulation
    #10;
    $finish;
  end

endmodule
