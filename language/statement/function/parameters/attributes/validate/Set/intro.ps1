function do-something {

   param (
      [validateSet('foo', 'bar', 'baz')] [string] $doWhat
   )

   switch ($doWhat) {

      'foo' { write-host 'Foo!'  }
      'bar' { write-host 'Bar!'  }
      'baz' { write-host 'Baz!'  }

   }
}
