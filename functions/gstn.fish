function gstn -w "" -d "Show pk and status of all nodes of a group."

  if test (count $argv) -lt 2
    echo "Showing all nodes for group: $argv[1]"
    set numnodes 100
  else
    echo "Showing last $argv[2] nodes for group: $argv[1]"
    set numnodes $argv[2]
  end

  for group_node in $(verdi group show $argv[1] | awk '{print $1}' | egrep [0-9]{4} | tail -n $numnodes)
    verdi node show $group_node | grep -B 1 'pk           ' | sort
    printf '=%.0s' (seq -w 1 25); echo
  end

end
