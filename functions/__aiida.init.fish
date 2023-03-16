function __aiida.init
  function # __aiida.create_abbr -d "Create aiida plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]

    # TODO: global scope abbr will be default in fish 3.6.0
    abbr -a -g $name $body
  end

  # Provide a smooth transition from universal to global abbreviations by
  # deleting the old univeral ones.  Can be removed after fish 3.6 is in
  # wide-spread use, i.e. 2024.  __aiida.destroy should also be removed
  # at the same time.
  if set -q __aiida_plugin_initialized
    __aiida.destroy
  end

  # verdi process
  __aiida.create_abbr vpl 'verdi process list -a -p 1' # Show a list of running or terminated processes started within the last day.
  __aiida.create_abbr vpr 'verdi process report'       # Show the log report for one or multiple processes.
  __aiida.create_abbr vpcr 'verdi process call-root'   # Show root process of the call stack for the given processes.
  __aiida.create_abbr vpk 'verdi process kill'         # Kill running processes.
  __aiida.create_abbr vppa 'verdi process pause'       # Pause running processes.
  __aiida.create_abbr vppl 'verdi process play'        # Play (unpause) paused processes.
  __aiida.create_abbr vpsh 'verdi process show'        # Show details for one or multiple processes.
  __aiida.create_abbr vpst 'verdi process status'      # Print the status of one or multiple processes.
  __aiida.create_abbr vpw 'verdi process watch'        # Watch the state transitions for a process.

  # verdi calcjob
  __aiida.create_abbr vci 'verdi calcjob inputcat'
  __aiida.create_abbr vco 'verdi calcjob outputcat'
  __aiida.create_abbr vcg 'verdi calcjob gotocomputer'

  # verdi group
  __aiida.create_abbr vgs 'verdi group show'
  __aiida.create_abbr vgl 'verdi group list -a'

  # Cleanup declared functions
  functions -e # __aiida.create_abbr
end
