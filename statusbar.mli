class type statusbar =
  object
    method isVisible : bool Js.t Js.readonly_prop
    method overlaysWebView : bool Js.t -> unit Js.meth
    method styleDefault : unit Js.meth
    method styleLightContent : unit Js.meth
    method styleBlackTranslucent : unit Js.meth
    method styleBlackOpaque : unit Js.meth
    method backgroundColorByName : Js.js_string Js.t -> unit Js.meth
    method backgroundColorByHexString: Js.js_string Js.t -> unit Js.meth
    method hide : unit Js.meth
    method show : unit Js.meth
  end

val statusbar : unit -> statusbar Js.t
