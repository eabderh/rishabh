


let simpleH = [[5.;5.;1.];[5.;-5.;2.];[-5.;-5.;3.];[-5.;5.;4.]];;
let t1=[3.;3.;0.];;
let t2=[-1.;-1.;0.];;
let t3=[0.;0.;0.];;


let rec theClass = function(a) ->
	match a with
	| x::[] -> x
	| _::xs -> theClass xs;;
theClass([1.;2.;3.;4.;5.]);;


let square x = x *. x;;
let rec distanceR2 = function(a, b) ->
	if (List.length(a) > 1) then
		square(List.hd(a) -. List.hd(b)) +. distanceR2(List.tl(a), List.tl(b))
	else 0.;;
distanceR2(t1,t2);;


let rec distanceAllVectors2 = function(x, ll) ->
	if (ll == []) then []
	else distanceR2(x, List.hd(ll))::distanceAllVectors2(x, List.tl(ll));;
distanceAllVectors2([-25.;1.;0.],simpleH);;
distanceAllVectors2([-25.;-1.;0.],simpleH);;
distanceAllVectors2([25.;-1.;0.],simpleH);;


let rec nnr1 = function(x, ll) ->
	distanceAllVectors2(x, ll);;



exit(0);;


let rec distanceR2 = function(alist,blist)-> 
if (List.tl(List.tl(alist))=[]) then square(List.hd blist -. List.hd alist)
else square(List.hd blist -. List.hd alist) +. distanceR2(List.tl alist, List.tl blist);;			
exit(0);;

let printpos = function(alist)->
	String.concat " " (List.map string_of_float alist);;


let rec printrow = function (alist)->
	if (alist = []) then []
	else printpos(List.hd alist)::printrow(List.tl alist);;
	let printList = function(alist)-> Printf.printf "%s"(String.concat "\n" (printrow(alist)));;


let rec theClass = function(alist)->
	if (alist=[]) then [] 
	else if (List.tl alist= []) then [List.hd alist]
	else theClass(List.tl alist);;

let square x = x *. x;;

let rec distanceR2 = function(alist,blist)-> 
if (List.tl(List.tl(alist))=[]) then square(List.hd blist -. List.hd alist)
else square(List.hd blist -. List.hd alist) +. distanceR2(List.tl alist, List.tl blist);;			

let rec distanceAllVectors2 = function(alist, blist)-> 
if(alist == [] || blist == []) then []
else distanceR2(alist,List.hd blist)::distanceAllVectors2(alist,List.tl blist);;

let min_pos li =
  let rec min_pos mini mpos cur_pos = function
	| [] -> mpos
	| hd::tl ->
	  if hd < mini
	  then min_pos hd cur_pos (cur_pos + 1) tl
	  else min_pos mini mpos (cur_pos + 1) tl
  in match li with
	 | [] -> invalid_arg "min_pos"
	 | hd::tl -> min_pos hd 0 1 tl
(*
let findindex = function(alist,blist)-> min_pos(distanceAllVectors2(alist,blist));;*)

(*let nnr1 = function(alist, blist)-> theClass(List.nth blist findindex);;*)

let rec findi_rec base p l = match l with [] -> raise Not_found | h::_ when p h -> base | _::t -> findi_rec (base+1) p t;;

let findi p l = findi_rec 0 p l;;

let index = findi (fun x -> x=(List.hd (List.sort compare [94; 50; 6; 7; 8; 8]))) [96;50;6;7;8;8];;

let nnr1 = List.nth simpleH index;;

let port = theClass(nnr1);;
