// 현재시간 찍기

setInterval("dpTime()",1000);
function dpTime()
{
  var now = new Date();
  month = now.getMonth() + 1;
  day = now.getDate();
  hours = now.getHours();
  minutes = now.getMinutes();
  
  if (hours > 12)
  {
    hours -= 12;
    ampm = "오후 ";
  }
  else
  {
    ampm = "오전 ";
  }
    if (hours < 10)
  {
    hours = "0" + hours;
  }
  if (minutes < 10)
  {
    minutes = "0" + minutes;
  }
  document.getElementById("dpTime").innerHTML = month + "월 " + day + "일 " + ampm + hours + ":" + minutes;
}