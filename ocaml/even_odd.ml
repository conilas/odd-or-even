
let is_odd number = 
  match number with 
    | _ when number mod 2 = 0 -> print_endline "hey, even!"
    | _ when number mod 2 > 0 -> print_endline "hey, odd!"
    | _ -> print_endline "wut"
;;

is_odd 2;
is_odd 3;
is_odd 4;
is_odd 5;
