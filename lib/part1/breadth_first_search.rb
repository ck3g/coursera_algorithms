def bfs(s, adj)
  level = { s => 0 }
  parent = { s => nil }
  i = 1
  frontier = [s]
  while !frontier.empty? do
    next_level = []
    frontier.each do |u|
      adj[u].each do |v|
        # if v not in level
        if level[v].nil?
          level[v] = i
          parent[v] = u
          next_item << v
        end
      end
    end

    frontier = next_level
    i += 1
  end
end
