import express from 'express';
var app = express();

app.get("/user" , (req,res)=>{
    res.send("Get Tested")
});

app.post("/user" , (req,res)=>{
    res.send("Post Tested")
})

app.listen(3000)