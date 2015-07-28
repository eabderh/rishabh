
let simpleH = [[5.;5.;1.];[5.;-5.;2.];[-5.;-5.;3.];[-5.;5.;4.]];;
let t1=[3.;3.;0.];;
let t2=[-1.;-1.;0.];;
let t3=[0.;0.;0.];;


theClass([1.;2.;3.;4.;5.]);;

distanceR2(t1,t2);;

distanceAllVectors2([-25.;1.;0.],simpleH);;
distanceAllVectors2([-25.;-1.;0.],simpleH);;
distanceAllVectors2([25.;-1.;0.],simpleH);;

nnr1([-25.;1.;0.],simpleH);;
nnr1([-25.;-1.;0.],simpleH);;
nnr1([25.;-1.;0.],simpleH);;

