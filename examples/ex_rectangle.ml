open Sdl

let () =
  Random.self_init ();
  Sdl.init [`VIDEO];
  let width, height = (320, 240) in
  let window, renderer =
    Sdlrender.create_window_and_renderer ~width ~height ~flags:[]
  in
  Sdlrender.set_draw_color3 renderer 0 0 0 255;
  Sdlrender.clear renderer;

  let rec loop () =
    let r = Random.int 255 in
    let g = Random.int 255 in
    let b = Random.int 255 in
    let a = 255 in

    let x1 = 10 + Random.int 80 in
    let y1 = 10 + Random.int 60 in
    let x2 = 100 + Random.int 200 in
    let y2 = 100 + Random.int 100 in

    Sdlgfx.rectangleRGBA renderer
        ~x1 ~y1 ~x2 ~y2
        ~r ~g ~b ~a;

    Sdlrender.render_present renderer;
    Sdltimer.delay 200;

    match Sdlevent.poll_event () with
    | Some Event.KeyDown { Event.keycode = Keycode.Q }
    | Some Event.KeyDown { Event.keycode = Keycode.Escape }
    | Some Sdlevent.Quit _ -> Sdl.quit ()
    | _ -> loop ()
  in
  loop ()
