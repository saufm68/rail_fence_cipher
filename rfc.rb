def cipher input
  array = input.split(//)
  line1 = ''
  line2 = ''
  line3 = ''
  for i in 0...array.length
    if i == 0 || i % 4 == 0
      line1 += array[i]
    elsif i % 2 != 0
      line2 += array[i]
    else
      line3 += array[i]
    end
  end
  encoded = line1 + line2 + line3
end

def custom_cipher input, rails
  array = input.split(//)
  list = []
  number = rails.to_i
  for i in 0...number
    list.push('')
  end
  reverse = (number-2)...1
  while array.length != 0
    for j in 0...number
      if array.length != 0
        list[j] << array.shift
      end
    end
    for j in (reverse.first).downto(reverse.last)
      if array.length != 0
        list[j] << array.shift
      end
    end
  end
  puts list
  encoded = list.join
end

puts custom_cipher(ARGV[0], ARGV[1])