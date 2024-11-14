
module ALU(
input logic [3:0]a,
input logic [3:0]b,
input logic [1:0]s,
output logic [3:0]f
);

    logic [3:0] w1;          
    logic [3:0] shift;       
    logic [3:0] andOP;        
    logic [3:0] mux1;         
//    logic [3:0] mux2;   
     logic trash;
    FourBitAdd_Sub a1 (.x(a),.y(b),.sum(w1),.cin(s[0]),.cout(trash));


    assign shift = a<<b;
    assign andOP = a & b;

    
    assign f = s[1] ? w1 : mux1;
    assign mux1 = s[0] ? andOP : shift;
   
    
 
endmodule