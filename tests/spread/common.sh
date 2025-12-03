cleanup_transition_tracker() {
    systemctl stop nginx || true
    systemctl stop ubuntu-transition-tracker.service || true

    rm -rf /app
    rm -rf /etc/systemd/system/ubuntu-transition-tracker.service
    rm -rf /etc/systemd/system/ubuntu-transition-tracker.timer

    apt-get purge -y ben dctrl-tools git nginx-light rsync
    systemctl daemon-reload
}
