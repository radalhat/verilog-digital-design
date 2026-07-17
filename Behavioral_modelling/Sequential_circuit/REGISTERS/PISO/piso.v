module piso(clk,rst,pi,mode,so);

input clk,rst,mode;
input [3:0] pi;
output so;

reg [3:0] q;

always @(posedge clk)
begin
    if(rst)
        q<=4'b0000;

    else if(mode==0)
        q<=pi;

    else
    begin
        q[3]<=1'bx;
        q[2]<=q[3];
        q[1]<=q[2];
        q[0]<=q[1];
    end
end

assign so=q[0];

endmodule
