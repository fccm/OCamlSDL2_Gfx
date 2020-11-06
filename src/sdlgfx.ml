(* OCamlSDL2_Image - An OCaml interface to the SDL2_Image library
 Copyright (C) 2013 Florent Monnier
 
 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.
 
 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)
(* Graphics primitives for SDL2 *)

external rectangleRGBA : 
  Sdlrender.t ->
  x1:int -> y1:int ->
  x2:int -> y2:int ->
  r:int -> g:int -> b:int -> a:int -> unit
  = "caml_rectangleRGBA_bytecode"
    "caml_rectangleRGBA"
