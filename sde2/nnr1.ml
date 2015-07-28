
let rec theClass = function(a) ->
	match a with
	| x::[] -> x
	| _::xs -> theClass xs;;


let square x = x *. x;;
let rec distanceR2 = function(a, b) ->
	if (List.length(a) > 1) then
		square(List.hd(a) -. List.hd(b)) +. distanceR2(List.tl(a), List.tl(b))
	else 0.;;


let rec distanceAllVectors2 = function(x, ll) ->
	if (ll == []) then []
	else distanceR2(x, List.hd(ll))::distanceAllVectors2(x, List.tl(ll));;

let rec nnr1rec = function(x, ll, min, c) ->
	if (ll == []) then c
	else if (distanceR2(x, List.hd(ll)) < min) then
		nnr1rec(x,
				List.tl(ll),
				distanceR2(x, List.hd(ll)),
				theClass(List.hd(ll)))
	else
		nnr1rec(x, List.tl(ll), min, c);;

let nnr1 = function(x, ll) ->
	nnr1rec(x,
			List.tl(ll),
			distanceR2(x, List.hd(ll)),
			theClass(List.hd(ll)));;


