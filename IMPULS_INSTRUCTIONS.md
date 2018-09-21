# Instructions to run this fork of the official Elm package locally

Setup for a run-off-the-mill Ubuntu (18.04 LTS):
* [ ] install Git
* [ ] [install Haskell stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)
* [ ] checkout this repo `git clone https://github.com/mfeineis/package.elm-lang.org`
* [ ] `cd package.elm-lang.org`
* [ ] `stack init --resolver=lts-11.20` - you need GHC 8.2.2 right now
* [ ] Remove the auto-detected `- migration` package, this is not necessary for us
* [ ] `stack build --profile`
* [ ] Generate a valid Github personal access token with `public_repo` permissions.
      It doesn't need to have anything more since the backend will just try to
      fetch the current list of packages which apparently is private to the
      `https://github.com/elm` org, so it just needs to be valid
      > https://github.com/settings/tokens
* [ ] `AUTH_TOKEN=<your-github-token> ./start.sh` should spin up the server
* [ ] visit http://localhost:8080 et voila
