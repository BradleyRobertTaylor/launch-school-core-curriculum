# Program written that can calculate the Hamming distance between two DNA strands.

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    last_idx = [@strand.length, other_strand.length].sort.first
    differences = 0

    (0...last_idx).each do |idx|
      differences += 1 unless @strand[idx] == other_strand.chars[idx]
    end

    differences
  end
end