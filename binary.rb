def binary_space n
  return 0 if n < -1 || n > 2_147_483_648
  spaces = n.to_s(2).scan(/1{1}0+1{1}/)
  spaces.empty? ? 0 : spaces.max_by(&:length).size - 2
end

p binary_space(5)
p binary_space(6)
p binary_space(22)
p binary_space(8)
p binary_space(1)
p binary_space(1_454_679_143)
p binary_space(2_147_483_647)
p binary_space(2_147_500_000)
p binary_space(-1)
p binary_space(-2)
p binary_space(129)
p binary_space(257)
