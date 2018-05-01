require "minruby"

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when tree[0] = "+"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when tree[0] = "-"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when tree[0] = "*"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  else
    # ここでは "/"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  end
end

tree = minruby_parse("(1 + 2) * (3 + 4)")
answer = evaluate(tree)
p(answer)