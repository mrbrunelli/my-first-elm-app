## My First Elm App
> A delightful language for reliable web applications.
> How to install Elm? :link:[Link here](https://guide.elm-lang.org/install/elm.html)
> Docs: :link: [Link here](https://elm-lang.org/)

### How to execute
```sh
# Clone this repository
git clone https://github.com/mrbrunelli/my-first-elm-app

# Navigate to project folder
cd my-first-elm-app/

# Execute in dev mode
elm reactor


# When the dashboard finish load 
# Access in http://localhost:8000 and:
src/Main.elm
``` 

### How to compile
```sh
# Automatic generator
elm make src/Main.elm

# With output folder
elm make src/Main.elm --output dist/elm.js

# With optimized output
elm make src/Main.elm --output dist/elm.js --optimize

# Generate HTML only
elm make src/Main.elm --output dist/index.html --optimize
```