const express = require('express')
const env = require('dotenv')
env.config()

const app = express()


const PORT = process.env.PORT || 5000

app.get('/',(req,res)=>{
    res.status(200).json({
        message: 'docker say hello'
    })
})


app.listen(PORT,()=>{
    console.log('server running at port ',PORT)
})