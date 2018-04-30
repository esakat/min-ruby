leaf_a = ["葉A"]
leaf_b = ["葉B"]
leaf_c = ["葉C"]
leaf_d = ["葉D"]

node2 = ["節2", leaf_a, leaf_b]
node3 = ["節3", leaf_c, leaf_d]
node1 = ["節1", node2, node3]

p(node1[0])
p(node1[1])
p(node1[1][0])
p(node1[1][1])

leaf_X = node1[1][1]
p(leaf_X[1]) # nil