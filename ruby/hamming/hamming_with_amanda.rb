class Hamming
  def self.compute(strand1, strand2)
    hammertime = 0




      strand1.chars.each_with_index do |nuke, index|
       if nuke != strand2[index]
        hammertime += 1
        end
      end
      hammertime
  end
end
