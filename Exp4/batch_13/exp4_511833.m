num=[1];
den=[1 10 20];
g=tf(num,den);
t=feedback(g,1)
figure(1)
step(t,4);
kp=300;
kd=10;
ki=70;
%%introduction to p
cont=pid(kp)
g1=g*cont
t1=feedback(g1,1)
figure(2)
step(t1,4);
%%introduction to pd
cont=pid(kp,kd)
g2=g*cont
t2=feedback(g2,1)
figure(5)
step(t2,4);
%%introduction to pi
cont=pid(kp,ki)
g3=g*cont
t3=feedback(g3,1)
figure(3)
step(t3,4);
%%introduction to pid
cont=pid(kp,kd,ki)
g4=g*cont
t4=feedback(g4,1)
figure(4)
step(t4,4);
%%comparison graph
step(t,4);
hold on
step(t1,4);
hold on
step(t2,4);
hold on
step(t3,4);
hold on
step(t4,4);
hold on
legend('feedback system','pcontroller','pdcontroller','picontroller','pidcontroller')
grid;

