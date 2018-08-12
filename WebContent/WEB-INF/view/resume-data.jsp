<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resume Data</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<h1> NYC Hackathon: Manny & Jon Starter Project: Resume Data Page</h1>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Data...">

      <table id="myTable" class="table table-striped container">
  <thead>
    <tr>
      <th scope="col">Category</th>
      <th scope="col">Data</th>

    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Candidate information</th>
      <td>${candidateInfo}</td>

    </tr>
    <tr>
      <th scope="row">Objective</th>
      <td>${objective}</td>

    </tr>
    <tr>
      <th scope="row">Work experience</th>
       <td>${workExperience}</td>
</td>
    </tr>
    <tr>
      <th scope="row">Skills</th>
      <td>${skills}</td>
</td>

    </tr>
    <tr>
      <th scope="row">Education</th>
      <td>${education}

</td>
</td>

    </tr>
    <tr>
      <th scope="row"> Projects & Accomplishment</th>
      <td> ${achomplishments}


</td>

    </tr>
  </tbody>
</table>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>
function myFunction() {
  // Declare variables 
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>
</body>
</html>