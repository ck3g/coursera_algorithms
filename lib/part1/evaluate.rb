def evaluate(expression)
  vals = []
  ops = []

  expression.delete(' ').split('').each do |char|
    if char == '('
      # ignore
    elsif char == '*' || char == '+'
      ops << char
    elsif char == ')'
      op = ops.pop
      if op == '+'
        vals.push vals.pop + vals.pop
      elsif op == '*'
        vals.push vals.pop * vals.pop
      end
    else
      vals << char.to_f
    end
  end

  vals.pop
end
