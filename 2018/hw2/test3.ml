(* Exercise 3. leftist heap *)
open Ex3
open Testlib

module TestEx3: TestEx =
  struct
    type testcase =
      | SEQ of seq list
    and seq =
      | INSERT of int
      | FINDMIN of int
      | FINDMIN_EMPTY
      | DELETEMIN
      | DELETEMIN_EMPTY

    let testcases =
      [ 
        SEQ [INSERT 1;  INSERT 2; FINDMIN 1; DELETEMIN; FINDMIN 2;];
        SEQ [ DELETEMIN_EMPTY; ];
        SEQ [ FINDMIN_EMPTY; ];
        SEQ [INSERT 1;  INSERT 2; FINDMIN 1; DELETEMIN; FINDMIN 2; DELETEMIN; FINDMIN_EMPTY; DELETEMIN_EMPTY; ];
        SEQ [INSERT 1; INSERT 1; INSERT 1; FINDMIN 1; DELETEMIN; FINDMIN 1; DELETEMIN; FINDMIN 1; DELETEMIN; FINDMIN_EMPTY; ]
      ]

    let runner tc =
      let rec runner_ : (seq list) * heap -> bool = fun (l,h) ->
        match l with
        | [] -> true
        | (head::tc') -> begin
            match head with
            | INSERT x -> runner_ (tc', insert (x,h))
            | FINDMIN x ->
                let y = findMin h in
                if x = y then runner_ (tc', h)
                else false
            | FINDMIN_EMPTY ->
                let _ = try Some (findMin h) with EmptyHeap -> None in
                true
            | DELETEMIN -> runner_ (tc', deleteMin h)
            | DELETEMIN_EMPTY ->
                let _ = try Some (deleteMin h) with EmptyHeap -> None in
                true
        end
      in
      match tc with
      | SEQ l -> runner_ (l,EMPTY)

    let string_of_tc tc =
      let rec string_of_seqs : (seq list) * heap -> (string*string*string) = fun (seqs,h) ->
        match seqs with
        | [] -> ("", "", "")
        | (head::seqs') ->
            match head with
            | INSERT x -> begin
                let (s, ans, out) = string_of_seqs (seqs',insert (x, h)) in
                ("\n  insert " ^ (string_of_int x)  ^ s, ans, out)
            end

            | FINDMIN x -> begin
                let y = findMin h in
                let (s,ans,out) = string_of_seqs (seqs',h) in
                if x = y then
                  ("\n  findMin: Expected " ^ string_of_int x ^ ", Your output " ^ string_of_int y ^ s, ans, out)
                else
                  ("\n  " ^ wrong_symbol ^ "findMin: Expected " ^ string_of_int x ^ ", Your output " ^ string_of_int y ^ s, ans, out)
            end
            
            | FINDMIN_EMPTY -> begin
                let res = try Some (findMin h) with EmptyHeap -> None in
                match res with
                | Some (y) -> ("\n  " ^ wrong_symbol ^ " findMin", "Exception EmptyHeap", string_of_int y)
                | None ->
                    let (s, ans, out) = string_of_seqs (seqs',h)
                    in ("\n  " ^ correct_symbol ^ "findMin = Exception EmptyHeap" ^ s, ans, out)
            end

            | DELETEMIN ->
                let (s, ans, out) = string_of_seqs (seqs',deleteMin (h)) in
                ("\n  deleteMin()" ^ s, ans, out)
            | DELETEMIN_EMPTY ->
                let res = try Some (deleteMin h) with EmptyHeap -> None in
                match res with
                | Some (y) -> ("\n  " ^ wrong_symbol ^ " deleteMin ", "Exception EmptyHeap", "Non-empty heap")
                | None ->
                    let (s, ans, out) = string_of_seqs (seqs',h)
                    in ("\n  " ^ correct_symbol ^ "deleteMin = Exception EmptyHeap" ^ s, ans, out)
      in
      match tc with
      | SEQ seqs -> string_of_seqs (seqs,EMPTY)
  end

open TestEx3
let _ = wrapper testcases runner string_of_tc