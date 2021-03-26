$dict = get-content -raw expression.txt | invoke-expression

"num = $($dict.num)"
"txt = $($dict.txt)"
