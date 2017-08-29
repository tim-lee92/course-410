require_relative 'multiset'

class ProductScoreCard < MultiSet
  WT_DESIGN = 1
  WT_DURABILITY = 2
  WT_QUALITY = 3

  def initialize(array)
    super(array)
  end

  def parameters
    self.to_set
  end

  def votes(parameter)
    members.select { |member| member.eql?(parameter) }.count
  end

  def downvoted(parameter)
    index = members.index(parameter)
    members.delete_at(index) if index
    self
  end

  def upvoted(parameter)
    members.push(parameter)
    self
  end

  def score_card
    total = 0
    members.each do |member|
      if member == 'Design'
        total += WT_DESIGN
      elsif member == 'Quality'
        total += WT_QUALITY
      elsif member == 'Durability'
        total += WT_DURABILITY
      end
    end

    total
  end
end
