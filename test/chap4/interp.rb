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
  when tree[0] = "/"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  when tree[0] = "%"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left % right
  when tree[0] = "**"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left ** right
  end
end

# 計算式の文字列を読み込む
str = gets

# 計算式の文字列を木に変換する
tree = minruby_parse(str)

# 計算を実行
answer = evaluate(tree)

# 計算結果を出力
p(answer)