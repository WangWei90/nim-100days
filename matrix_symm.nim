import neo

let
  coeff = [
    662211.98,
    210195, 899446.61,
    29333.33, 0, 479056.64,
    0, 29333.33, 210195, 479056.64,
    18333.33, 18333.33, 18333.33, 18333.33, 15277.78,
    175650.41, 0, 175650.41, 175650.41, 0, 293566.14
  ]

  k = makeMatrix(6, 6) do (i, j: int) -> float64:
    var (i, j) = (i, j)
    if j > i:
      swap(i, j)
    let index = i * (i + 1) div 2 + j
    coeff[index]

  v = vector([222.37, 0.0, -54.56, 54.56, 100.0, 306.95])

echo solve(k, v)
