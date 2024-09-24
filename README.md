# Why?
Allow users to run [Squint](https://github.com/squint-cljs/squint), a [ClojureScript](https://clojurescript.org/) dialect, in their [React](https://react.dev/) project.

# How?
`react-cljs` exposes two things:
- a setup script that installs `react-cljs` as a dev dependency and inserts a script into `package.json` called `cljs-repl` that spins up a Squint REPL
- a [Vite](https://vitejs.dev/) plugin utilising Squints `compileString` to transpile ClojureScript to JavaScript.

# Usage
## Working example
```
> npm create vite@latest react-cljs-test -- --template react
> cd react-cljs-test
> npx react-cljs setup
```
Then add `cljsToJs` to your plugins list in `vite.config.js`
```
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { cljsToJs  } from 'react-cljs'

export default defineConfig({
  plugins: [cljsToJs(), react()],
})

```
One can now freely drop `.cljs` files into their React project and import its functions as any other JavaScript function
