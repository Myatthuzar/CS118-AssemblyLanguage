fun euclid m n = if n > 0
                    then euclid n (m mod n)
                    else m ;
euclid 558 198;  (* expect 18 *)
