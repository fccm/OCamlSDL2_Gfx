/* OCamlSDL2_Gfx - An OCaml interface to the SDL2_gfx library
 Copyright (C) 2020 Florent Monnier
 
 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.
 
 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*/
#define CAML_NAME_SPACE
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/alloc.h>
#include <caml/fail.h>

#include <SDL2_gfxPrimitives.h>
#include "sdlrwops_stub.h"
#include "sdltexture_stub.h"
#include "sdlsurface_stub.h"
#include "sdlrender_stub.h"

CAMLprim value
caml_pixelRGBA(
        value renderer,
        value x, value y,
        value r, value g, value b, value a)
{
    int ret =
        pixelRGBA(
            SDL_Renderer_val(renderer),
            Int_val(x), Int_val(y),
            Int_val(r), Int_val(g), Int_val(b), Int_val(a));

    return Val_unit;
}

CAMLprim value
caml_pixelRGBA_bytecode(value * argv, int argn)
{
    return caml_pixelRGBA(
            argv[0], argv[1], argv[2],
            argv[3], argv[4], argv[5], argv[6] );
}

CAMLprim value
caml_rectangleRGBA(
        value renderer,
        value x1, value y1,
        value x2, value y2,
        value r, value g, value b, value a)
{
    int ret =
        rectangleRGBA(
            SDL_Renderer_val(renderer),
            Int_val(x1), Int_val(y1),
            Int_val(x2), Int_val(y2),
            Int_val(r), Int_val(g), Int_val(b), Int_val(a));

    return Val_unit;
}

CAMLprim value
caml_rectangleRGBA_bytecode(value * argv, int argn)
{
    return caml_rectangleRGBA(
            argv[0], argv[1], argv[2],
            argv[3], argv[4], argv[5],
            argv[6], argv[7], argv[8] );
}

/* vim: set ts=4 sw=4 et: */
