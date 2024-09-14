# Why?
Use ClojureScript (Squint) in your React project. 

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
