class ParensChecker
  def initialize(string)
    @string = string
    @open = '([{'
    @close = ')]}'
  end

  def balanced?
    stack = []
    @string.each_char do |char|
      if @open.include?(char)
        stack.push(char)
      elsif @close.include?(char)
        return false if stack.empty?
        return false if !opposite?(stack[-1], char)
        stack.pop
      end
    end

    stack.empty?
  end

  def opposite?(last_stack, char)
    # opening = '([{'
    # closing = ')]}'
    @open.index(last_stack) == @close.index(char)

    # return true if last_stack == '(' && char == ')'
    # return true if last_stack == '[' && char == ']'
    # return true if last_stack == '{' && char == '}'
    # false
  end
end
