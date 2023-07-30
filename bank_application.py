
from flask import Flask,render_template
app =Flask(__name__)

@app.route('/')
def homepage():
    return render_template('homepage.html')

@app.route('/login')
def login():
    return render_template('loginpage.html')

@app.route('/register')
def register():
    return render_template('registerpage.html')

@app.route('/deposit')
def deposit():
    return render_template('depositpage.html')

@app.route('/withdraw')
def withdraw():
    return render_template('withdrawpage.html')

if __name__=="__main__":
    app.run(host='0.0.0.0',port='8080',debug=True)