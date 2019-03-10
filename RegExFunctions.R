# match states that contains z
grep(pattern = 'z+', state.name, value = T)

# match states with 2s
grep(pattern = "s{2}", state.name, value = T)

# match states with one or two s'
grep(pattern = "s{1,2}", state.name, value = T)
