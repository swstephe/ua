 $(document).ready ->
    for dive in dives
      $('#logbook').append """
        <div class='col-sm-4'>
        <h3>#{dive.site}</h3>
        <h4>#{dive.location}</h4>
        <h2>#{dive.depth} feet | #{dive.time} min</h2>
        </div>
      """
