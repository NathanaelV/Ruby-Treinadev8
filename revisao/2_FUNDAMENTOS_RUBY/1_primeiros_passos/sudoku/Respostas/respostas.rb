# 1
class Sudoku
  def check(list)
    groups = list.group_by{|n| n }
    groups.map{|k, v| v.length == 1 ? 1 : 0 }.sum == 9
  end
end


# 2
class Sudoku
  def check(list)
    return false if not list.dup.uniq!.nil?
    list.to_set.superset?((1..9).to_a.to_set)
  end
end
