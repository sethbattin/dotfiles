alias webcam="gst-launch-1.0 v4l2src device=/dev/video0 ! videoconvert ! xvimagesink"

# reverse mac nonsense compatibility (gnu grep instead of openbsd)
alias ggrep=grep
# ...which doesn't work in scripts
function ggrep () {
  grep "$@"
}
export -f ggrep
# holy shit, that doesn't work either? welp.....
# sudo ln -s /bin/grep /bin/ggrep
