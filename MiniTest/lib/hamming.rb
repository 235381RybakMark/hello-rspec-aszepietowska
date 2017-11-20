# Hamming exercise
class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length

    difference = 0

    index = 0
    while index < first.length
      difference += 1 if first[index] != second[index]
      index += 1
    end

    difference
  end
end

module BookKeeping
  VERSION = 3
end
