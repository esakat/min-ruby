require "minruby"



# 計算式の文字列を読み込む
str = gets

# 計算式の文字列を木に変換する
tree = minruby_parse(str)

# 計算を実行
# answer = ...

# 計算結果を出力
p(answer)