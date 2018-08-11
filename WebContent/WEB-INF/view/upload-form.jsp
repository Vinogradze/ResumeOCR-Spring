
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> NYC Hackathon: Manny & Jon Starter Project: Upload page</h1>
      <h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "showResumeData" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
</body>
</html>