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
function checkday(date) {
   if (date.daytext.disabled==true) {
    date.daytext.disabled=false
   } else {
    date.daytext.disabled=true
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

// 위에서도 동일한 코드가 있음.
// function checkgrade(grade) {
//    if (grade.gradetext.disabled==true) {
//     grade.gradetext.disabled=false
//    } else {
//     grade.gradetext.disabled=true
//    }
// }

function checksubject(sub) {
   if (sub.subjecttext.disabled==true) {
    sub.subjecttext.disabled=false
   } else {
    sub.subjecttext.disabled=true
   }
}
