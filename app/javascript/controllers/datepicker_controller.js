import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["input", "startDate", "endDate"];

  connect() {
    flatpickr(this.inputTarget, {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
      onChange: (selectedDates) => {
        if (selectedDates.length === 2) {
          this.startDateTarget.value = flatpickr.formatDate(
            selectedDates[0],
            "Y-m-d",
          );

          this.endDateTarget.value = flatpickr.formatDate(
            selectedDates[1],
            "Y-m-d",
          );
        }
      },
    });
  }
}
