import 'package:intl/intl.dart';

extension DateRangeFormatter on String {
  String formatDateRange() {
    try {
      // Remove spaces around '-' and split by dash
      final parts = this.replaceAll(' ', '').split('-');

      if (parts.length == 3) {
        // Only start date YYYY-MM-DD
        final start = DateTime.parse(this);
        return DateFormat("MMM d yyyy").format(start);
      }

      if (parts.length == 6) {
        // Start and end dates
        final start = DateTime.parse("${parts[0]}-${parts[1]}-${parts[2]}");
        final end = DateTime.parse("${parts[3]}-${parts[4]}-${parts[5]}");

        bool sameYear = start.year == end.year;

        if (sameYear) {
          if (start.month == end.month) {
            // Nov 21 – 28 2025
            return "${DateFormat("MMM d").format(start)} – ${end.day} ${start.year}";
          } else {
            // Nov 21 – Dec 4 2025
            return "${DateFormat("MMM d").format(start)} – ${DateFormat("MMM d").format(end)} ${start.year}";
          }
        } else {
          // Nov 21 2025 – Jan 4 2026
          return "${DateFormat("MMM d yyyy").format(start)} – ${DateFormat("MMM d yyyy").format(end)}";
        }
      }

      return this; // fallback if format unexpected
    } catch (_) {
      return this;
    }
  }
}
