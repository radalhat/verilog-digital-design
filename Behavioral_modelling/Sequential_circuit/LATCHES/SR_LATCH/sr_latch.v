module sr_latch(s,r,q,qbar);

input s,r;
output reg q;
output qbar;

always @(s,r)
begin
    if(s==0 && r==0)
        q=q;
    else if(s==0 && r==1)
        q=0;
    else if(s==1 && r==0)
        q=1;
    else
        q=1'bx;
end

assign qbar=~q;

endmodule
