// 현재시간 찍기

setInterval("dpTime()",1000);
function dpTime()
{
  var now = new Date();
  month = now.getMonth() + 1;
  day = now.getDate();
  hours = now.getHours();
  minutes = now.getMinutes();
  
  if (hours > 12){
  hours -= 12;
  ampm = "오후 ";
  }else{
  ampm = "오전 ";
  }
  if (hours < 10){
  hours = "0" + hours;
  }
  if (minutes < 10){
  minutes = "0" + minutes;
  }
  document.getElementById("dpTime").innerHTML = month + "월 " + day + "일 " + ampm + hours + ":" + minutes;
}

// 체크박스 메소드
function checkdiv(divs) {
   if (divs.divtext.disabled==true) {
      divs.divtext.disabled=false
   } else {
    divs.divtext.disabled=true
   }
}
function checktitle(titles) {
   if (titles.titletext.disabled==true) {
    titles.titletext.disabled=false
   }  else {
    titles.titletext.disabled=true
   }
}
function checkgrades(grad) {
   if (grad.gradestext.disabled==true) {
    grad.gradestext.disabled=false
   } else {
    grad.gradestext.disabled=true
   }
}
function checkprof(profs) {
   if (profs.proftext.disabled==true) {
    profs.proftext.disabled=false
   } else {
    profs.proftext.disabled=true
   }
}
function checktime(times) {
   if (times.timetext.disabled==true) {
    times.timetext.disabled=false
   } else {
    times.timetext.disabled=true
   }
}
function checkclass(classes) {
   if (classes.classroomtext.disabled==true) {
    classes.classroomtext.disabled=false
   } else {
    classes.classroomtext.disabled=true
   }
}
function checkgrade(grade) {
   if (grade.gradetext.disabled==true) {
    grade.gradetext.disabled=false
   } else {
    grade.gradetext.disabled=true
   }
}
function checksubject(sub) {
   if (sub.subjecttext.disabled==true) {
    sub.subjecttext.disabled=false
   } else {
    sub.subjecttext.disabled=true
   }
}
