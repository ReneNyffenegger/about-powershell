set-strictMode -version latest

enum roshambo {
   rock
   paper
   scissors
}

enum outcome {
   win
   draw
   loss
}

function play-rock-paper-scissors {

   param (
      [roshambo] $player_1,
      [roshambo] $player_2
   )

   if ($player_1 -eq $player_2) { return [outcome]::draw }

   if ( ( $player_1 -eq [roshambo]::rock    ) -and ( $player_2 -eq [roshambo]::scissors ) ) { return [outcome]::win }
   if ( ( $player_1 -eq [roshambo]::paper   ) -and ( $player_2 -eq [roshambo]::rock     ) ) { return [outcome]::win }
   if ( ( $player_1 -eq [roshambo]::scissors) -and ( $player_2 -eq [roshambo]::paper    ) ) { return [outcome]::win }

   return [outcome]::loss

}

play-rock-paper-scissors   rock     rock
play-rock-paper-scissors   rock     paper
play-rock-paper-scissors   rock     scissor

play-rock-paper-scissors   paper    rock
play-rock-paper-scissors   scissor  rock
play-rock-paper-scissors   roc      rock
