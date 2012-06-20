class BraceValidator
  def self.IsValid to_check
    stack = []
    to_check.split(//).each  do |c|
      case c
        when "(", "[", "{"
          stack.push c
        when ")"
          return false if stack.pop != "("
        when "]"
          return false if stack.pop != "["
        when "}"
          return false if stack.pop != "{"
      end
    end
    return stack.length == 0
  end
end
