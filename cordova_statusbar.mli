(* -------------------------------------------------------------------------- *)
val is_visible                     : unit -> bool
[@@js.get "StatusBar.isVisible"]

val overlays_web_view              : bool -> unit
[@@js.global "StatusBar.overlaysWebView"]

module Style :
  sig
    val default                  : unit -> unit
    [@@js.global "StatusBar.styleDefault"]

    val light_content            : unit -> unit
    [@@js.global "StatusBar.styleLightContent"]

    val black_translucent        : unit -> unit
    [@@js.global "StatusBar.styleBlackTranslucent"]

    val black_opaque             : unit -> unit
    [@@js.global "StatusBar.styleBlackOpaque"]
  end

module Background :
  sig
    val color_by_name       : string -> unit
    [@@js.global "StatusBar.backgroundColorByName"]

    val color_by_hex_string : string -> unit
    [@@js.global "StatusBar.backgroundColorByHexString"]
  end

val hide                           : unit -> unit
[@@js.global "StatusBar.hide"]

val show                           : unit -> unit
[@@js.global "StatusBar.show"]
(* -------------------------------------------------------------------------- *)
