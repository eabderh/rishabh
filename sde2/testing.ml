
let simpleH = [[5.;5.;1.];[5.;-5.;2.];[-5.;-5.;3.];[-5.;5.;4.]];;
let t1=[3.;3.;0.];;
let t2=[-1.;-1.;0.];;
let t3=[0.;0.;0.];;

theClass([1.;2.;3.;4.;5.]);;
theClass([-5.;5.;4.]);;

distanceR2([1.;2.;0.],[5.;5.;0.]);;
distanceR2(t1,t2);;
distanceR2(t1,t3);;

distanceAllVectors2([5.;5.;0.],simpleH);;
distanceAllVectors2([0.;0.;0.],simpleH);;
distanceAllVectors2(t1,simpleH);;
distanceAllVectors2([-25.;1.;0.],simpleH);;

nnr1([-25.;1.;0.],simpleH);;
nnr1([-25.;-1.;0.],simpleH);;
nnr1([25.;-1.;0.],simpleH);;


nnr1([],simpleH);;
distanceR2([],t2);;
distanceR2(t2,[]);;


