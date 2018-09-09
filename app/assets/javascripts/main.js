

$( document ).ready(function() {
  $('.studentList').hide();
  $('.cohortList').hide();
  $('.showStudents').click(function(){
    $('.studentList').slideToggle(1000);
  });
  $('.showCohots').click(function(){
    $('.cohortList').slideToggle(1000);
  });
});
