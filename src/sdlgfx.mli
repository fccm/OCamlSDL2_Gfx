external rectangleRGBA :
  Sdlrender.t ->
  x1:int ->
  y1:int -> x2:int -> y2:int -> r:int -> g:int -> b:int -> a:int -> unit
  = "caml_rectangleRGBA_bytecode"
    "caml_rectangleRGBA"
