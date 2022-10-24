# @param {String} s
# @return {Boolean}
def is_valid(s)
  st = []
  s.chars.each do |c|
    t = st[-1]
    if c == ']' && t == '[' ||
        c == '}' && t == '{' ||
        c == ')' && t == '('
      st.pop
    else
      st << c
    end
  end
  st.empty?
end
