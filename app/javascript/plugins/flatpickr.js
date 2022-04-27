import flatpickr from 'flatpickr'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#starts_date", {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#ends_date"})]
});
