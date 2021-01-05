function saySomething {

   param(
      [string] $text = 'hello world'
   )

   write-host $text
}

saySomething
saySomething 'good by'
