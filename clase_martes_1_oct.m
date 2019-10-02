%-----------Samuel Ayala Cremieux
%-----------Robotica Industrial
%leer grados
prompt = 'Introduce grados deseados:\n';
theta_deg = input(prompt);
%-----------------------------theta2
prompt = 'Introduce grados deseados para theta2:\n';
theta_deg2 = input(prompt);
prompt = 'Introduce distancia L2:\n';
L2= input (prompt);
%---------------------------------
%leer L1
prompt = 'Introduce distancia L1:\n';
L1= input (prompt);
%--------------------------------
theta_Rad = deg2rad(theta_deg);
theta_Rad2 = deg2rad(theta_deg2);
%imprimir ejes

p1 = [0 0 0]';

if theta_deg>=0
    angVec = 0:0.01:theta_Rad;
else
    angVec = 0:-0.01:theta_Rad;
end
%length =tamaño
for i = 1:length(angVec)
    clf
 imprimehoy();
TRz1 = [cos(angVec(i)) -sin(angVec(i)) 0 0;sin(angVec(i)) cos(angVec(i)) 0 0;0 0 1 0;0 0 0 1];
TRx1 = [1 0 0 L1;0 1 0 0; 0 0 1 0; 0 0 0 1];
T1 = TRz1*TRx1;
p2 = T1(1:3,4);
line([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)])

TRz2 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0;0 0 1 0;0 0 0 1];
TRx2 = [1 0 0 L2;0 1 0 0; 0 0 1 0; 0 0 0 1];
T2 = TRz2*TRx2;
Tf= T1*T2;
p3 = Tf(1:3,4);
line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'color',[0.5 0.5 0]);
pause(0.1)
 end