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

## How to use ?

See the official documentation
[cordova-plugin-statusbar](https://github.com/apache/cordova-plugin-statusbar)

## ! BE CAREFUL !

The statusbar plugin creates a new object called *StatusBar*, but the object is
available when the *deviceready* event is handled.

We don't provide a *statusbar* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *statusbar* will be set to **undefined**
because the *statusbar* object doesn't exist when we create the variable.

We provide a function of type unit -> statusbar Js.t which does returns the
*statusbar* object. You need to call it when the deviceready event is handled, eg

```OCaml
let on_device_ready =
  let s = Statusbar.statusbar () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```

