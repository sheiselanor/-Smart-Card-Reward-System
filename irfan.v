module irfan(
input wire clk,rst,ir1,ir2,ir3,ir4,
output reg led1,led2,buz,mot,
output reg [6:0]hex0,hex1,hex2,hex3,hex4,hex5);
																		//led1 is red, led2 is green
																		//ir1 is for red led, ir2 is for green led
always@(posedge clk)
begin
	if(rst)
	begin
	led1<=1'b0;
	led2<=1'b0;
	buz<=1'b0;
	mot<=1'b1;
	hex0=7'b0111111;
	hex1=7'b0000110;
	hex2=7'b1000111;
	hex3=7'b0100001;
	hex4=7'b1111001;
	hex5=7'b0111111;							//display -IdLE-
	end
	else if(ir1==1'b0)
	begin
	led1<=1'b1;
	led2<=1'b0;
	buz<=1'b1;
	mot<=1'b1;
	hex0=7'b1111111;
	hex1=7'b1111111;
	hex2=7'b0001001;
	hex3=7'b1000001;
	hex4=7'b0001001;
	hex5=7'b1111111;                    //display HUH 
	end
	else if(ir2==1'b0)
	begin
	led2<=1'b1;
	led1<=1'b0;
	buz<=1'b0;
	mot<=1'b0;
	hex0=7'b1000000;
	hex1=7'b1000000;
	hex2=7'b1000000;
	hex3=7'b0011000;
	hex4=7'b0000000;
	hex5=7'b0000000;							//display 88 9000
	end
	else if(ir3==1'b0)
	begin
	led2<=1'b1;
	led1<=1'b0;
	buz<=1'b0;
	mot<=1'b1;
	hex0=7'b1000000;
	hex1=7'b1000000;
	hex2=7'b0110000;
	hex3=7'b1111000;
	hex4=7'b0011000;
	hex5=7'b0000010;							//display 69 7300
	end
	else if(ir4==1'b0)
	begin
	led2<=1'b1;
	led1<=1'b0;
	buz<=1'b0;
	mot<=1'b0;
	hex0=7'b0011000;
	hex1=7'b0011000;
	hex2=7'b0011000;
	hex3=7'b0011000;
	hex4=7'b0011000;
	hex5=7'b0011000;							//display 99 9999
	end
end
endmodule


