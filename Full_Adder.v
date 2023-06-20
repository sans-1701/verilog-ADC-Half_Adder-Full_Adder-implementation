module Full_Adder(x , y , Cin ,S,Cout);
input x , y , Cin;
output S ,Cout ;
wire p1;
wire q1 ; 
wire q2;
xor X1(p1 , x , y);
and A1(q1 , x , y );
xor X2 (S , p1 ,Cin);
and A2(q2 , Cin , p1);
or O1(Cout , q2 , q1); 
endmodule 