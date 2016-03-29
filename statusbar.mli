(* -------------------------------------------------------------------------- *)
class statusbar : Ojs.t ->
  object
    inherit Ojs.obj
    method is_visible                     : bool
    method overlays_web_view              : bool -> unit
    method style_default                  : unit
    method style_light_content            : unit
    method style_black_translucent        : unit
    method style_black_opaque             : unit
    method background_color_by_name       : string -> unit
    method background_color_by_hex_string : string -> unit
    method hide                           : unit
    method show                           : unit
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> statusbar
[@@js.get "StatusBar"]
(* -------------------------------------------------------------------------- *)
