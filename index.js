import { compileString } from ('squint-cljs')

export function cljsToJs () {
  return {
    name: "cljsTojs",
    transform(source, id) {
      if (id.endsWith('.cljs')) {
        return compileString(source)
      }
      return source
    }
  }
}
