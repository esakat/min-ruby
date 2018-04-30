def preorder(tree)
  if tree[0].start_with?("葉")
    p(tree[0])
  elsif tree[0].start_with?("節")
    preorder(tree[1])
    preorder(tree[2])
  end
end

# 動作確認用データ
node1 = [
  "節A",
  ["節B", ["葉A"], ["葉B"]],
  ["節C", 
    ["節D",
      ["葉C"], ["葉D"]
    ],
    ["節E",
      ["葉E"], ["葉F"]
    ],
  ]
]

preorder(node1)