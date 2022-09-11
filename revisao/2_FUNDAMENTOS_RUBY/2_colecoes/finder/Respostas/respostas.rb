# 1
class Finder
  def index_of(list, value)
    list.map.with_index {|v, i| i if v.include?(value)}.compact
  end
end


# 2
class Finder
  def index_of(list, value)
    list.each_index.select{|index| list[index].include?(value)}
  end
end


# 3
class Finder
  def index_of(list, value)
    indexes = []
    list.each.with_index do |element, index|
      if element.include? value then indexes << index end
    end

    indexes
  end
end

