const express = require("express");
const app = express();

app.get("/", (req, res) => res.send("<h1>Un saluto dal pc principale</h1>"));
app.listen(3080, () => console.log("Server listening... "));