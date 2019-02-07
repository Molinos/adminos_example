//= require bootstrap-datepicker
//= require bootstrap-datepicker/locales/bootstrap-datepicker.ru.js

$(function() {
  function initDatePicker() {
    $('.date-picker').datepicker({
      format: 'yyyy-mm-dd',
      language: 'ru',
      todayHighlight: true,
      startDate: '1999-01-01',
      endDate: '+2y'
    })
      .on('changeDate', function(e) {
        $(this).closest('.input-date-field').find('input').val(e.date);
      });
  }

  function setDate() {
    $('.input-date-field').each(function(index, element) {
      var date = $(element).find('input').val();
      $(element).find('.date-picker').datepicker('setDate', date);
    });
  }

  $(window).on('turbolinks:load', function() {
    initDatePicker();
    setDate();
  });

  initDatePicker();
  setDate();
});
