# ocaml-cordova-plugin-statusbar

Binding to
[cordova-plugin-statusbar](https://github.com/apache/cordova-plugin-statusbar)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-statusbar-example)

## What does cordova-plugin-statusbar do ?

Create a statusbar object.
```
The StatusBar object provides some functions to customize the iOS and Android StatusBar.
```
Source: [cordova-plugin-statusbar](https://github.com/apache/cordova-plugin-statusbar)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-statusbar/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to use ?

See the official documentation
[cordova-plugin-statusbar](https://github.com/apache/cordova-plugin-statusbar)

## ! BE CAREFUL !

The statusbar plugin creates a new object called *StatusBar*, but the object is
available when the *deviceready* event is handled.

We provide a function Statusbar.t of type unit -> Statusbar.statusbar which
returns the binding to the *statusbar* object. You need to call it when the
deviceready event is handled, eg (with js_of_ocaml)

```OCaml
let on_device_ready _ =
  let s = Statusbar.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```

