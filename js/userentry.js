updateGroup();

function updateGroup(){
  $.ajax({
      url: "./sql/retriveUserGroup.php",
      method: "GET",
      data: {blank: 'blank'} ,
      success: function (data){
          document.getElementById('group').innerHTML=data;
        }
      });
}

function loadTable(){
  $.ajax({
      url: "./sql/retriveUser.php",
      method: "GET",
      data: {blank: 'blank'} ,
      success: function (data){
          document.getElementById('table-container').hidden=false;
          document.getElementById('table').innerHTML=data;
          document.getElementById('group').selectedIndex=-1;
        }
      });
}

function createUser(){
  var name = document.getElementById('name');
  var uname = document.getElementById('uname');
  var psw = document.getElementById('psw');
  var group = document.getElementById('group').options[document.getElementById('group').selectedIndex].value;
  $.ajax({
      url: "./sql/pushUser.php",
      method: "GET",
      datatype: "text",
      data: {name: name.value, uname: uname.value, psw: psw.value, group: group}
    }).done(function(msg){
      alert(msg);
      name.innerHTML="";
      uname.innerHTML="";
      psw.innerHTML="";
      document.getElementById('group').selectedIndex=-1;
      loadTable();
    }).fail(function(msg){
      alert(msg);
    });
}
