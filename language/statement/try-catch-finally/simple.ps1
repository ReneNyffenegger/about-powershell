function divide-by($num) {

  try {

    write-output "42 / $num = $(42/$num)"

  }
  catch {

    write-output "Exception $_"

  }
  finally {

    write-output "The finally block is always executed";

  }

}

divide-by 7
divide-by 6
divide-by 0
divide-by 3
