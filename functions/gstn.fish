function gstn -w "" -d "Show pk and status of all nodes of a group."

  echo "Showing all nodes for group: $argv[1]"

  for group_node in $(verdi group show $argv[1] | awk '{print $1}' | egrep [0-9]{4})
    verdi node show $group_node | grep -B 1 'pk           ' | sort
    printf '=%.0s' (seq -w 1 25); echo
  end
end
