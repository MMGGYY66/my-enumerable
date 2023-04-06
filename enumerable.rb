module MyEnumerable
  def all?
    @list.each { |element| return false unless yield element }
    true
  end

  def filter
    result = []
    @list.each do |element|
      result.push(element) if yield element
    end
    result
  end

  def any?
    @list.each { |element| return true if yield element }
    false
  end
end
