open Duneexample

let test_foo_1 () = 
  assert (Foo.foo 2 = 3);
  ()

let () =
  let open Alcotest in
  run "Foo" [ ("foo-function", [ test_case "unit" `Quick test_foo_1 ]) ]