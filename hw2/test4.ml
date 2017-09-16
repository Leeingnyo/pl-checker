(* Exercise 4. checkmetro *)
open Ex4
open Testlib

module TestEx4: TestEx =
  struct
    let exnum = 4

    type testcase =
      | CHECK of metro * bool

    let runner tc =
      match tc with
      | CHECK (m, b) -> checkMetro m = b

    let testcases =
      [ CHECK (AREA ("a", STATION "a"), true)
      ; CHECK (AREA ("a", AREA ("a", STATION "a")), true)
      ; CHECK (AREA ("a", AREA ("b", CONNECT (STATION "a", STATION "b"))), true)
      ; CHECK (AREA ("a", CONNECT (STATION "a", AREA ("b", STATION "a"))), true)
      ; CHECK (AREA ("a", STATION "b"), false)
      ; CHECK (AREA ("a", CONNECT (STATION "a", AREA ("b", STATION "c"))), false)
      ; CHECK (AREA ("a", AREA ("b", CONNECT (STATION "a", STATION "c"))), false)
      ; CHECK (STATION "a", false)
      ; CHECK (STATION "b", false)
      ; CHECK (AREA ("b", STATION "b"), true)
      ; CHECK (AREA ("asdf", STATION "asdf"), true)
      ; CHECK (AREA ("b", STATION "a"), false)
      ; CHECK (AREA ("seoul", STATION "busan"), false)
      ; CHECK (CONNECT (AREA ("seoul", STATION "seoul"), AREA ("busan", STATION "busan")), true)
      ; CHECK (CONNECT (AREA ("seoul", STATION "seoul"), AREA ("busan", STATION "seoul")), false)
      ; CHECK (CONNECT (AREA ("seoul", STATION "busan"), AREA ("busan", STATION "busan")), false)
      ; CHECK (CONNECT (AREA ("seoul", STATION "busan"), AREA ("busan", STATION "seoul")), false)
      ]
  end

open TestEx4
let _ = wrapper testcases runner exnum