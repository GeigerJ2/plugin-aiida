function __aiida.init
    function __aiida.create_abbr -d "Create aiida plugin abbreviation"
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

    # verdi archive => va
     __aiida.create_abbr va   'verdi archive create'                  # Create an archive from all or part of a profiles\'s data.
     __aiida.create_abbr vaim 'verdi archive import'                  # Import archived data to a profile.
     __aiida.create_abbr vain 'verdi archive info'                    # Summarise the contents of an archive.
     __aiida.create_abbr vam  'verdi archive migrate'                 # Migrate an archive to a more recent schema version.
     __aiida.create_abbr vav  'verdi archive version'                 # Print the current version of an archive\'s schema.

    # verdi calcjob => vc
    __aiida.create_abbr vcc  'verdi calcjob cleanworkdir'             # Clean all content of all output remote folders of calcjobs.
    __aiida.create_abbr vcg  'verdi calcjob gotocomputer'             # Open a shell in the remote folder on the calcjob.
    __aiida.create_abbr vci  'verdi calcjob inputcat'                 # Show the contents of one of the calcjob input files.
    __aiida.create_abbr vcil 'verdi calcjob inputls'                  # Show the list of the generated calcjob input files.
    __aiida.create_abbr vco  'verdi calcjob outputcat'                # Show the contents of one of the calcjob retrieved outputs.
    __aiida.create_abbr vcol 'verdi calcjob outputls'                 # Show the list of the retrieved calcjob output files.
    __aiida.create_abbr vcr  'verdi calcjob res'                      # Print data from the result output Dict node of a calcjob.

    # verdi code => vco
    __aiida.create_abbr vcoc  'verdi code create'                     # Create a new code.
    __aiida.create_abbr vcodel  'verdi code delete'                   # Delete a code.
    __aiida.create_abbr vcodu  'verdi code duplicate'                 # Duplicate a code allowing to change some parameters.
    __aiida.create_abbr vcoh  'verdi code hide'                       # Hide one or more codes from `verdi code list`.
    __aiida.create_abbr vcol  'verdi code list'                       # List the available codes.
    __aiida.create_abbr vcor 'verdi code relabel'                     # Relabel a code.
    __aiida.create_abbr vcorv  'verdi code reveal'                    # Reveal one or more hidden codes in `verdi code list`.
    __aiida.create_abbr vcosp  'verdi code setup '                    # Setup a new code.
    __aiida.create_abbr vcos  'verdi code show'                       # Display detailed information for a code.
    __aiida.create_abbr vcot  'verdi code test'                       # Run tests for the given code to check whether it is usable.

    # verdi computer => vcm
    __aiida.create_abbr vcmc 'verdi computer configure'               # Configure the Authinfo details for a computer (and user).
    __aiida.create_abbr vcmdel 'verdi computer delete'                # Delete a computer.
    __aiida.create_abbr vcmdis 'verdi computer disable'               # Disable the computer for the given user.
    __aiida.create_abbr vcmdu 'verdi computer duplicate'              # Duplicate a computer allowing to change some parameters.
    __aiida.create_abbr vcme 'verdi computer enable'                  # Enable the computer for the given user.
    __aiida.create_abbr vcml 'verdi computer list'                    # List all available computers.
    __aiida.create_abbr vcmr 'verdi computer relabel'                 # Relabel a computer.
    __aiida.create_abbr vcmsp 'verdi computer setup'                  # Create a new computer.
    __aiida.create_abbr vcms 'verdi computer show'                    # Show detailed information for a computer.
    __aiida.create_abbr vcmt 'verdi computer test'                    # Test the connection to a computer.

    # verdi config => vcn
    __aiida.create_abbr vcnc 'verdi config caching'                   # List caching-enabled process types for the current profile.
    __aiida.create_abbr vcnd 'verdi config downgrade'                 # Print a configuration, downgraded to a specific version.
    __aiida.create_abbr vcng 'verdi config get'                       # Get the value of an AiiDA option for the current profile.
    __aiida.create_abbr vcnl 'verdi config list'                      # List AiiDA options for the current profile.
    __aiida.create_abbr vcns 'verdi config set'                       # Set an AiiDA option.
    __aiida.create_abbr vcnsh 'verdi config show'                     # Show details of an AiiDA option for the current profile.
    __aiida.create_abbr vcnu  'verdi config unset'                    # Unset an AiiDA option.

    # verdi daemon => vdm
    __aiida.create_abbr vdmd  'verdi daemon decr'                     # Remove NUMBER [default=1] workers from the running daemon.
    __aiida.create_abbr vdmi 'verdi daemon incr'                      # Add NUMBER [default=1] workers to the running daemon.
    __aiida.create_abbr vdml 'verdi daemon logshow'                   # Show the log of the daemon, press CTRL+C to quit.
    __aiida.create_abbr vdmr 'verdi daemon restart'                   # Restart the daemon.
    __aiida.create_abbr vdms 'verdi daemon start'                     # Start the daemon with NUMBER workers.
    __aiida.create_abbr vdmss 'verdi daemon status'                   # Print the status of the current daemon or all daemons.
    __aiida.create_abbr vdmst 'verdi daemon stop'                     # Stop the daemon.
    __aiida.create_abbr vdm  'verdi daemon worker'                    # Run a single daemon worker in the current interpreter.

    # verdi data => vd
    __aiida.create_abbr vdca 'verdi daemon core.array'               # Manipulate ArrayData objects (numpy arrays).
    __aiida.create_abbr vdcb 'verdi daemon core.bands'               # Manipulate BandsData objects (band structures).
    __aiida.create_abbr vdcc 'verdi daemon core.cif'                 # Manipulate CifData objects (crystal structures in .cif...
    __aiida.create_abbr vdcd 'verdi daemon core.dict'                # Manipulate Dict objects (python dictionaries).
    __aiida.create_abbr vdcr 'verdi daemon core.remote'              # Manipulate RemoteData objects (reference to remote...
    __aiida.create_abbr vdcsf 'verdi daemon core.singlefile'         # Work with SinglefileData nodes.
    __aiida.create_abbr vdcs 'verdi daemon core.structure'           # Manipulate StructureData objects (crystal structures).
    __aiida.create_abbr vdct 'verdi daemon core.trajectory'          # Manipulate TrajectoryData objects (molecular...
    __aiida.create_abbr vdcu 'verdi daemon core.upf'                 # UpfData objects (UPF-format pseudopotentials).

    # verdi devel => vdv
    __aiida.create_abbr vdvclt  'verdi devel check-load-time'         # Check for common indicators that slowdown...
    __aiida.create_abbr vdvcui  'verdi devel check-undesired-imports' # Check that verdi does not import python...
    __aiida.create_abbr vdvla  'verdi devel launch-add'               # Launch an ``ArithmeticAddCalculation``.
    __aiida.create_abbr vdvr  'verdi devel rabbitmq'                  # Commands to interact with RabbitMQ.
    __aiida.create_abbr vdvs  'verdi devel run-sql'                   # Run a raw SQL command on the profile database...
    __aiida.create_abbr vdvv 'verdi devel validate-plugins'           # Validate all plugins by checking they can be...

    # verdi group => vg
    __aiida.create_abbr vgan  'verdi group add-nodes'                 # Add nodes to a group.
    __aiida.create_abbr vgc  'verdi group copy'                       # Duplicate a group.
    __aiida.create_abbr vgcr 'verdi group create'                     # Create an empty group with a given label.
    __aiida.create_abbr vgdel 'verdi group delete'                    # Delete a group and (optionally) the nodes it contains.
    __aiida.create_abbr vgd  'verdi group description'                # Change the description of a group.
    __aiida.create_abbr vgl  'verdi group list'                       # Show a list of existing groups.
    __aiida.create_abbr vgm 'verdi group move-nodes'                  # Move the specified NODES from one group to another.
    __aiida.create_abbr vgp 'verdi group path'                        # Inspect groups of nodes, with delimited label paths.
    __aiida.create_abbr vgr 'verdi group relabel'                     # Change the label of a group.
    __aiida.create_abbr vgrn 'verdi group remove-nodes'               # Remove nodes from a group.
    __aiida.create_abbr vgs 'verdi group show'                        # Show information for a given group.

    # verdi node => vn
    __aiida.create_abbr vna 'verdi node attributes'                   # Show the attributes of one or more nodes.
    __aiida.create_abbr vnc 'verdi node comment'                      # Inspect, create and manage node comments.
    __aiida.create_abbr vndel 'verdi node delete'                     # Delete nodes from the provenance graph.
    __aiida.create_abbr vnd  'verdi node description'                 # View or set the description of one or more nodes.
    __aiida.create_abbr vne 'verdi node extras'                       # Show the extras of one or more nodes.
    __aiida.create_abbr vng 'verdi node graph'                        # Create visual representations of the provenance graph.
    __aiida.create_abbr vnl 'verdi node label'                        # View or set the label of one or more nodes.
    __aiida.create_abbr vnrh 'verdi node rehash'                       # Recompute the hash for nodes in the database.
    __aiida.create_abbr vnr 'verdi node repo'                         # Inspect the content of a node repository folder.
    __aiida.create_abbr vns 'verdi node show'                         # Show generic information on one or more nodes.

    # verdi plugin => vpl
    __aiida.create_abbr vpll  'verdi plugin list'                     # Display a list of all available plugins.

    # verdi process => vp
    __aiida.create_abbr vpcr  'verdi process call-root'               # Show root process of the call stack for the given processes.
    __aiida.create_abbr vpkill  'verdi process kill'                  # Kill running processes.
    __aiida.create_abbr vpl  'verdi process list'                     # Show a list of running or terminated processes.
    __aiida.create_abbr vpp 'verdi process pause'                     # Pause running processes.
    __aiida.create_abbr vppl 'verdi process play'                     # Play (unpause) paused processes.
    __aiida.create_abbr vpr 'verdi process report'                    # Show the log report for one or multiple processes.
    __aiida.create_abbr vps 'verdi process show'                      # Show details for one or multiple processes.
    __aiida.create_abbr vpst 'verdi process status'                   # Print the status of one or multiple processes.
    __aiida.create_abbr vpw 'verdi process watch'                     # Watch the state transitions for a process.

    # verdi profile => vpr
    __aiida.create_abbr vprdel 'verdi profile delete'                 # Delete one or more profiles.
    __aiida.create_abbr vprl  'verdi profile list'                    # Display a list of all available profiles.
    __aiida.create_abbr vprsd  'verdi profile setdefault'             # Set a profile as the default one.
    __aiida.create_abbr vprs  'verdi profile show'                    # Show details for a profile.

    # verdi storage => vs
    __aiida.create_abbr vsi 'verdi storage info'                       # Summarise the contents of the storage.
    __aiida.create_abbr vsiy 'verdi storage integrity'                  # Checks for the integrity of the data storage.
    __aiida.create_abbr vsm 'verdi storage maintain'                   # Performs maintenance tasks on the repository.
    __aiida.create_abbr vsmi 'verdi storage migrate'                    # Migrate the storage to the latest schema version.
    __aiida.create_abbr vss 'verdi storage version'                    # Print the current version of the storage schema.

    # verdi user => user
    __aiida.create_abbr vuc  'verdi user configure'                     # Configure a new or existing user.
    __aiida.create_abbr vul  'verdi user list'                          # Show a list of all users.
    __aiida.create_abbr vusd 'verdi user set-default'                   # Set a user as the default user for the profile.

    # verdi quicksetup
    # verdi restapi
    # verdi run
    # verdi setup
    # verdi shell
    # verdi status
    
    # Cleanup declared functions
    functions -e __aiida.create_abbr
end
