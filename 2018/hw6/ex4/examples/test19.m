(0,
(1,
(2,
(true,
(false,
(let val f = fn x => x + 1 in f end,
(let val f = fn x => 1 + x in f end,
(let val f = fn x => x + x in f end,
(let val f = fn x => x - 1 in f end,
(let val f = fn x => 1 - x in f end,
(let val f = fn x => x - x in f end,
(let val f = fn x => x = 1 in f end,
(let val f = fn x => 1 = x in f end,
(let val f = fn x => x = true in f end,
(let val f = fn x => true = x in f end,
(let val f = fn x => x = "" in f end,
(let val f = fn x => "" = x in f end,
(let val f = fn x => x = malloc 0 in f end,
(let val f = fn x => malloc 0 = x in f end,
(let val f = fn x => x = malloc (0, (true, ("", (malloc 0, (malloc true, (malloc "", malloc (fn x => x + x))))))) in f end,
(let val f = fn x => malloc ((((((malloc (fn x => x + x), malloc ""), malloc true), malloc 0), ""), true), 0) = x in f end,
(let val f = fn x => x = x in (f 1, f) end,
(let val f = fn x => x = x in (f true, f) end,
(let val f = fn x => x = x in (f "", f) end,
(let val f = fn x => x = x in (f (malloc 0), f) end,
(let val f = fn x => x = x in (f (malloc (0, (true, ("", (malloc 0, (malloc true, (malloc "", malloc (fn x => x + x)))))))), f) end,
(let val f = fn x => x = x in (f (malloc ((((((malloc (fn x => x + x), malloc ""), malloc true), malloc 0), ""), true), 0)), f) end,
(let val f = fn x => x + x in (malloc f) end,
(let val f = fn x => x and true in f end,
(let val f = fn x => true and x in f end,
(let val f = fn x => x and x in f end,
(let val f = fn x => x or true in f end,
(let val f = fn x => true or x in f end,
(let val f = fn x => x or x in f end,
(let val f = fn x => x.1 + x.2 in f end,
(let val f = fn x => x.1 - x.2 in f end,
(let val f = fn x => x.1 and x.2 in f end,
(let val f = fn x => x.1 or x.2 in f end,
(let val f = fn x => (x.1.1 + x.1.2 = x.2.1) = x.2.2 in f end,
(let val f = fn x => x = malloc malloc malloc malloc fn x => x + x in f end,
(let val f = fn x => if x then 0 else 1 in f end,
(let val f = fn x => if x then true else false in f end,
(let val f = fn x => if x then "a" else "b" in f end,
(let val f = fn x => if x then malloc 0 else malloc 1 in f end,
(let val f = fn x => if x then malloc (0, (true, ("", (malloc 0, (malloc true, (malloc "", malloc (fn x => x + x))))))) else malloc (1, (false, ("b", (malloc 1, (malloc false, (malloc "b", malloc (fn x => x - x))))))) in f end,
(let val f = fn x => if x then malloc ((((((malloc (fn x => x + x), malloc "a"), malloc true), malloc 0), "a"), true), 0) else malloc ((((((malloc (fn x => x - x), malloc "b"), malloc false), malloc 1), "b"), false), 1) in f end,
(let val f = fn x => if x then malloc malloc malloc malloc fn x => x + x else malloc malloc malloc malloc fn x => x - x in f end,
(let val f = fn a => fn b => fn c => fn d => fn e => (e (e d)) (d (d c)) (c (c b)) (b (b a)) + 1 in f end,
(let val f = fn a => fn b => fn c => fn d => fn e => (e (e d)) (d (d c)) (c (c b)) (b (b a)) in (f 1, f) end,
(let rec f = fn x => x + 1 in f end,
(let rec f = fn x => 1 + x in f end,
(let rec f = fn x => x + x in f end,
(let rec f = fn x => x - 1 in f end,
(let rec f = fn x => 1 - x in f end,
(let rec f = fn x => x - x in f end,
(let rec f = fn x => x = 1 in f end,
(let rec f = fn x => 1 = x in f end,
(let rec f = fn x => x = true in f end,
(let rec f = fn x => true = x in f end,
(let rec f = fn x => x = "" in f end,
(let rec f = fn x => "" = x in f end,
(let rec f = fn x => x = malloc 0 in f end,
(let rec f = fn x => malloc 0 = x in f end,
(let rec f = fn x => x = malloc (0, (true, ("", (malloc 0, (malloc true, (malloc "", malloc (fn x => x + x))))))) in f end,
(let rec f = fn x => malloc ((((((malloc (fn x => x + x), malloc ""), malloc true), malloc 0), ""), true), 0) = x in f end,
(let rec f = fn x => x = x in (f 1, f) end,
(let rec f = fn x => x = x in (f true, f) end,
(let rec f = fn x => x = x in (f "", f) end,
(let rec f = fn x => x = x in (f (malloc 0), f) end,
(let rec f = fn x => x = x in (f (malloc (0, (true, ("", (malloc 0, (malloc true, (malloc "", malloc (fn x => x + x)))))))), f) end,
(let rec f = fn x => x = x in (f (malloc ((((((malloc (fn x => x + x), malloc ""), malloc true), malloc 0), ""), true), 0)), f) end,
(let rec f = fn x => x + x in (malloc f) end,
(let rec f = fn x => x and true in f end,
(let rec f = fn x => true and x in f end,
(let rec f = fn x => x and x in f end,
(let rec f = fn x => x or true in f end,
(let rec f = fn x => true or x in f end,
(let rec f = fn x => x or x in f end,
(let rec f = fn x => x.1 + x.2 in f end,
(let rec f = fn x => x.1 - x.2 in f end,
(let rec f = fn x => x.1 and x.2 in f end,
(let rec f = fn x => x.1 or x.2 in f end,
(let rec f = fn x => (x.1.1 + x.1.2 = x.2.1) = x.2.2 in f end,
(let rec f = fn x => x = malloc malloc malloc malloc fn x => x + x in f end,
(let rec f = fn x => if x then 0 else 1 in f end,
(let rec f = fn x => if x then true else false in f end,
(let rec f = fn x => if x then "a" else "b" in f end,
(let rec f = fn x => if x then malloc 0 else malloc 1 in f end,
(let rec f = fn x => if x then malloc (0, (true, ("", (malloc 0, (malloc true, (malloc "", malloc (fn x => x + x))))))) else malloc (1, (false, ("b", (malloc 1, (malloc false, (malloc "b", malloc (fn x => x - x))))))) in f end,
(let rec f = fn x => if x then malloc ((((((malloc (fn x => x + x), malloc "a"), malloc true), malloc 0), "a"), true), 0) else malloc ((((((malloc (fn x => x - x), malloc "b"), malloc false), malloc 1), "b"), false), 1) in f end,
(let rec f = fn x => if x then malloc malloc malloc malloc fn x => x + x else malloc malloc malloc malloc fn x => x - x in f end,
(let rec f = fn a => fn b => fn c => fn d => fn e => (e (e d)) (d (d c)) (c (c b)) (b (b a)) + 1 in f end,
(let rec f = fn a => fn b => fn c => fn d => fn e => (e (e d)) (d (d c)) (c (c b)) (b (b a)) in (f 1, f) end,
(let rec f = fn x => f (f x x x x x x) in (f, f 1) end,
(let rec f = fn x => read in (f, f true) end,
(let rec f = fn x => f x + write x in f end,
(let rec f = fn x => write x + f x in f end,
(let val f = fn x => f x and write x in f end,
(let val f = fn x => write x and f x in f end,
(let val f = fn x => f x or write x in f end,
(let val f = fn x => write x or f x in f end,
(let val f = fn x => write x in (f, f "") end,
(let val f = fn x => !x + 1 in f end,
(let val f = fn x => !x - 1 in f end,
(let val f = fn x => !x and true in f end,
(let val f = fn x => !x or false in f end,
(let val f = fn x => !!!!!!!x + 1 in f end,
(let val f = fn x => !!!!!!!x - 1 in f end,
(let val f = fn x => !!!!!!!x and true in f end,
(let val f = fn x => !!!!!!!x or false in f end,
0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
