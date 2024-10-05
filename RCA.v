module fa(
    input a,b,cin,
    output sum,carry);

assign sum = a ^ b ^ cin;
assign carry = (a & b)|(b & cin)|(cin & a);
                
endmodule
// RCA using Full adder
module rca(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output c4);

wire c1,c2,c3;     

fa fa0(a[0],b[0],cin,sum[0],c1);
fa fa1(a[1],b[1],c1,sum[1],c2);
fa fa2(a[2],b[2],c2,sum[2],c3);
fa fa3(a[3],b[3],c3,sum[3],c4);
                
endmodule
