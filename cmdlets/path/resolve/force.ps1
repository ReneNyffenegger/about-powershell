function resolve-always($path) {

   $resolved = resolve-path $path -errorAction silentlyContinue -errorVariable err

   if (! $resolved) {
      return $err[0].targetObject
   }

   return $resolved
}
