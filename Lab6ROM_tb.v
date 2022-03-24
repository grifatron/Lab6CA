module Lab6ROM_tb(e,r);
input e;
output r;

reg [7:0] address;
reg clock;
wire [31:0] Inout;

Lab6ROM dut0(.Address(address), .InstOut(Inout), .clk(clock));

initial begin
clock =1'd0;
address  = 8'b00000001;
end

always begin


 if(address ==8'h 48)
begin
$stop;
end

#5 clock = ~clock;

if (address == 8'b00000001 && clock == 1) begin
address = 8'b00000000;
end

else if (clock == 1) begin
address = 8'b00000100 + address;
end
end


endmodule