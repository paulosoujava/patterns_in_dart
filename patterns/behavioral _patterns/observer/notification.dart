class Notification {
  String message;
  DateTime timestamp;
  Notification(this.message, this.timestamp);
  Notification.forNow(this.message) {
    timestamp = new DateTime.now();
  }
}
