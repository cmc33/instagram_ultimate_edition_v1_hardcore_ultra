expressions = [ ")(){}", "[]({})", "([])", "{()[]}", "([)]" ]
# expressions = [ "[]({})" ]

def check_braces(expressions)
  matchers = {
      "{" => "}",
      "[" => "]",
      "(" => ")"
      }

  expressions.each do |expression|
    elements = []
    expression.chars.each do |char|
      elements << char if elements.empty?
      last_element = elements[-1]
      if char == matchers[last_element]
        elements.pop
      end
    end
    puts (elements.empty? ? "YES" : "NO")
  end
end

check_braces(expressions)