def increment char
  if /[a-zA-Z]/.match?(char)
    char == "Z" ? char = "A" : char = char.next
  end
  char
end

def caesar_cipher str, num
  caesar = ""
  str.split("").map do |l|
    num.times.map do
      l = increment l
    end
    caesar << l
  end
  caesar
end
