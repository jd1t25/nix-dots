{
  systemd.services.test = {
    # this service is "wanted by" (see systemd man pages, or other tutorials) the system
    # level that allows multiple users to login and interact with the machine non-graphically
    # (see the Red Hat tutorial or Arch Linux Wiki for more information on what each target means)
    # this is the "node" in the systemd dependency graph that will run the service
    wantedBy = ["multi-user.target"];
    # systemd service unit declarations involve specifying dependencies and order of execution
    # of systemd nodes; here we are saying that we want our service to start after the network has
    # set up (as our IRC client needs to relay over the network)
    description = "Test";
    serviceConfig = {
      # see systemd man pages for more information on the various options for "Type": "notify"
      # specifies that this is a service that waits for notification from its predecessor (declared in
      # `after=`) before starting
      Type = "simple";
      # username that systemd will look for; if it exists, it will start a service associated with that user
      User = "jd1t";
      # the command to execute when the service starts up
      ExecStart = ''ffplay /home/jd1t/samyak/rainy.mkv'';
      # and the command to execute
    };
  };
}
# {
#   systemd.services.test = {
#     enable = true;
#     description = "";
#     script = ''
#       exec /home/jd1t/samyak/ff
#     '';
#     restartIfChanged = true;
#     environment = {
#       WAYLAND_DISPLAY = "wayland-1"; # Set the Wayland display environment variable
#     };
#     serviceConfig = {
#       Type = "simple";
#       User = "jd1t";
#     };
#   };
# }

