# itunes-to-csv

This dumb little container takes the output from a command-C copy
of an iTunes/Music.app playlist and turns it into a CSV format we've
proposed to the developers of the Radio Station Pro Wordpress plugin
to fill out playlists.

It currently doesn't fill in the label, as that's not shown in an iTunes
playlist, but it does get all the rest of the data, including the play time.

# Building

1. Install Docker or whatever substitute you like (I prefer Rancher Desktop).
2. Run `./build.sh` to build and tag the container.
3. Create a playlist by running the container in interactive mode and pasting in the copied playlist. Output will be on standard output as a CSV.
