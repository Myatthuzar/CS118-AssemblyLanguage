boxTable := scanlog "lab3";
thePicture := "drawing";
thePicIndex := [#"A",#"A"];

val bx = box 4.0 1.0;
val stackframe1 = 
  let 
	val p1 = label "198" bx;
	val p2 = label "558" bx;
	val retaddr = label "ret addr" bx;
	val oldebp = namePic (label "old ebp" bx) "oldebp"; 		
in p1 vseq p2 vseq retaddr vseq oldebp end;
val ebp = label "ebp" bx;
let 
  val state = (namePic stackframe1 "sf1") hseq 
		hspace 2.0 hseq 
		(namePic ebp "ebp");
	val src = state pic "ebp" pt "w";
	val dst = state pic "sf1" pic "oldebp" pt "e";
in state seq arrow src dst
end;
draw it "fpic-drawing";
