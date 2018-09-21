# Impuls Elm
Welcome to the Impuls series, we're going to learn about Elm today.

> A delightful language for reliable webapps.

WWN0OkxxxkkxxkkxkkkkkkkkkkkkkkkkkkkkkkkkO0XWWNKkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xKWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
:cxKWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxkxk0XWWNKkxxxxxxxxxxxxxxxxxxxxxxxxxxxx
:::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxkk0XWWNKkxxxxxxxxxxxxxxxxxxxxxxxxxx
:::::cxKWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKkxxxxxxxxxxxxxxxxxxxxxxxx
::::;::cxKWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKkxxxxxxxxxxxxxxxxxxxxxx
:::::;:::cxKWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKkxxxxxxxxxxxxxxxxxxxx
:;:::::;:::cxKWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxkk0XWWNKkxxxxxxxxxxxxxxxxxx
:::::::;:::::cxKWWNKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKXNWMWNKkxxxxxxxxxxxxxxxx
::::::::::::;::cxKWMMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMMMMMNKkxxxxxxxxxxxxxx
:::::::::::::;:::cxKWMWX0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO0XWMWNXXWWNKkxxxxxxxxxxxx
:::::::::;:::::;:::cxKWWNKOkkkkkkkkkkkkkkkkkkkkkkkkkkOKNWWNKOkk0XWWNKkxxxxxxxxxx
:::::::::::::::;:::::cxKWWNKOkkkkkkkkkkkkkkkkkkkkkkO0NWWNKkxxxxxk0XWWNKkxxxxxxxx
::::::::::::::::::::;::cxKWWNKOkkkkkkkkkkkkkkkkkkO0NWWNKOkxxxxxxxxk0XWWNKkxxxxxx
:::::::::::::::::::::;:::cxKWWNKOkkkkkkkkkkkkkkOKNWWNKOkxxxxxxxxxxxxk0XWWNKkxxxx
:::::::::::::::::;:::::;:::cxKWWNKOkkkkkkkkkkOKNWWNKkxxxxxxxxxxxxxxxxkk0XWWNKkxx
:::::::::::::::::::::::;;::::cxKWWNKOkkkkkkOKNWWNKOxxxxxxxxxxxxxxxxxxxxxk0XWWNKk
:::::::::::::::::::::::::::::::cxKWWNKOkkOKNWWNKOkxxxxxxxxxxxxxxxxxxxxxxxxk0XWWN
::::::::::::::::::::::::::;::;:::cxKWWNXXNWWNKOkxxxxxxxxxxxxxxxxxxxxxxxxxxxkk0XW
:::::::::::::::::::::::::;:::::;:::lkNMMMMWKOkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxkk0
::::::::::::::::::::::::::::::::::cxKWWWWWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0X
::::::::::::::::::::::::::::::::cxKWWN0OO0NWWN0kkxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWW
:::::::::::::::::::::::;::::;:cxKWWN0kxxxxk0XWWN0kkxxxxxxxxxxxxxxxxxxxxxkk0XWWNK
:::::::::::::::::;::::::::::cxKWWN0kxxxxxxxxk0XWWN0kkxxxxxxxxxxxxxxxxxxk0XWWNKOk
::::::::::::::::::::::::::cxKWWN0kxxxxxxxxxxxxk0XWWN0kkxxxxxxxxxxxxxkk0XWWNKOkkk
::::::::::::::::::::::::cxKWWN0kxxxxxxxxxxxxxxdxk0NWWN0kkxxxxxxxxxxk0XWWNKOkkkkk
::::::::::::::::::::;:cxKWWN0kxxxxxxxxxxxxxxxxxxxxk0XWWN0kkxxxxxxk0XWWNKOkkkkkkk
:::::::::;::::::::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxk0XWWN0kkxxk0XWWNKOkkkkkkkkk
::::::::::::::::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWN0O0XWWNKOkkkkkkkkkkk
::::::::::::::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxdxk0NWWWWWNKOkkkkkkkkkkkkk
:::::::;::::;:cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0NWMWXOkkkkkkkkkkkkkk
:;::::::::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKOkkkkkkkkkkkk
::::::::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKOkkkkkkkkkk
::::::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxdxk0NWWNKOkkkkkkkk
::::;:cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0NWWNKOkkkkkk
::::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKOkkkk
::cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0XWWNKOkk
cxKWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxdxk0NWWNKO
KWWN0kxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxk0NWWN
MWXOxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxkXWM




















## About Elm

In a nutshell
* Statically typed functional language in ML tradition
  like (Standard ML, Haskell, F#, ...)
* Specifically designed for frontend usage (for now)
* Only constants, pure functions and immutable data, no mutation
* Message based JS interop (no FFI)
* No higher kinded types (e.g. type classes)
* Compiles to JS (for now)
* No runtime exceptions(*)
* Not bootstrapped (for now)

Links:
* Official Website:    [elm-lang]
* Slack Chat:          [elm-slack]
* Discourse Forum:     [elm-discourse]
* Getting Started:     [elm-guide]
* Elm News Aggregator: [elm-news]


(*) Except for compiler bugs, mutual recursion, JS quirks











































## Before we begin
* Some preparation has been done in this fork of the original repo 
  to speed up the talk, you can check the git history, if you're 
  interested in what has been done to the default setup.
* There is probably not enough time for you to check the code out 
  during the talk but you can check it out on your own later, see
  [IMPULS_INSTRUCTIONS.md][] for instructions on how to get this app
  running locally.
* Danger, Will Robinson:
  The backend is written in [Haskell][haskell-lang] so you might get 
  lost on the way ;-)
























































## Mission Statement
This repo contains a snapshot of the official Elm package website. We 
are going to add a new feature to this non-trivial app and pick up 
some Elm on the way.

* Visit [elm-package] for the online version
* Checkout the [IMPULS_INSTRUCTIONS.md][] to run it locally

























































## The feature
Every (package) website needs a way to display random cat pictures.

### User Story:
As a regular visitor of the Elm package website I want to be able
to see random cat pictures when using the search in order to bring
me some joy while at work.

### AC:
* Given I visit the package website 
  When I type `randomcat` into the search field
  Then a cat picture is displayed.
* Given I see the cat picture
  When I click the button "Fetch new cat!"
  Then a different cat picture is displayed

### Prior Art:
* A static page has been added that displays some selected cat
  pictures statically via [giphy] and includes a
  [link to the giphy explore cat page][giphy-random]. Visit 
  [elm-cat-static] to see the page.
* The package website has a search feature that displays contextual
  information when appropriate - e.g. explaining concepts and 
  differences to other languages. Visit [elm-package] and type 
  `component` into the search bar.






































## Trivia to distract you from the unavoidable technical difficulties
* It's called Elm like the tree, not ELM
* Evan Czaplicki, the creator of Elm, has open sourced the compiler
  and all libraries originally created for his doctoral thesis. He
  has been recruited by [no-red-ink] to work full time on the language
  while he still retains all copyrights to his IP.
* The unofficial Elm motto is:
  > There are worse things than being explicit
* As a corollary: if you want type classes, dependent types or first
  class modules and the like for your frontend development you should 
  check out alternatives like [purescript-lang] or [ghcjs].
* Elm as a language inspired the creation of 
  - [The Mint Language][mint-lang] 
  - [Elchemy][elchemy-lang], the Elm like syntax wrapper for the [Elixir Language][elixir-lang]
* Elm includes a web framework called The Elm Architecture (TEA)
* TEA as an architecture inspired a number of libraries/frameworks 
  in other languages:
  - [Fable (F#)][fable-io]
  - [Miso (GHCJS)][ghcjs-miso-lib]
  - [Redux (JS/Dart/...)][redux-lib]
  - [Pux (PureScript)][purescript-pux-lib]
  - [Thermite (PureScript)][purescript-thermite-lib]
  - ...









































## FAQ

If Elm is pure how do I interact with the outside world?
* Elm has managed effects, you describe what should happen as data, the
  runtime executes the effect and lets you know whether or not it 
  succeed via a `msg` into your `update` function
* If you need to interface with JavaScript you have three options:
  1) Reconsider if you really need JavaScript
  2) Use [ports][elm-ports] for interactions that can be modeled with
     message passing, e.g. calling Web APIs.
  3) Use [custom elements][custom-elements] for embedding external
     components like maps or editors.
* See [elm-interop] for details

Which backend compile targets are considered for the future?
- **definitely not JS** - so no official [NodeJS][node-js] integration
- [WebAssembly][web-assembly]
- [Erlang's BEAM VM][erlang-beam]
- [LLVM][llvm]

What's the deal with the Elm logo?
- It's a [tangram][wiki-tangram] - simple, elegant and its parts are
  composable for library logos :-)


























## References (as of 2018-09-21)
[custom-elements]: https://guide.elm-lang.org/interop/custom_elements.html
[elchemy-lang]: https://wende.github.io/elchemy/
[elm-cat-static]: http://localhost:8080/help/cats.md
[elm-discourse]: https://discourse.elm-lang.org
[elm-guide]: https://guide.elm-lang.org
[elm-interop]: https://guide.elm-lang.org/interop/
[elm-lang]: https://www.elm-lang.org
[elm-news]: https://elm-news.com
[elm-package]: https://package.elm-lang.org/
[elm-ports]: https://guide.elm-lang.org/interop/ports.html
[elm-slack]: https://elmlang.herokuapp.com
[erlang-beam]: https://erlang.org/faq/implementations.html
[fable-io]: https://www.fable.io
[ghcjs-miso-lib]: https://github.com/dmjio/miso
[ghcjs]: https://github.com/ghcjs/ghcjs
[giphy-random]: https://giphy.com/explore/cat
[giphy]: https://giphy.com
[haskell-lang]: https://www.haskell.org
[llvm]: https://llvm.org
[mint-lang]: https://www.mint-lang.com
[no-red-ink]: https://www.noredink.com
[node-js]: https://nodejs.org
[purescript-lang]: https://www.purescript.org
[purescript-pux-lib]: https://github.com/alexmingoia/purescript-pux
[purescript-thermite-lib]: https://github.com/paf31/purescript-thermite
[redux-lib]: https://redux.js.org
[webassembly]: https://webassembly.org
[wiki-tangram]: https://en.wikipedia.org/wiki/Tangram
