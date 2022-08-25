from flask import Flask, render_template, request, flash, redirect
from datetime import datetime
from flask_sqlalchemy import SQLAlchemy
import json, os

app = Flask(__name__)

# Import json file
with open('config.json', "r") as c:
    params = json.load(c)["params"]

app.config['SQLALCHEMY_DATABASE_URI'] = params['db_uri']
app.config['SECRET_KEY'] = "quotedb-secret-key"
db = SQLAlchemy(app)

"""
-------------------------
Create Database Models
-------------------------
"""
class Author(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)

class Category(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    catImage = db.Column(db.String(50), nullable=False)

class Contact(db.Model):
    user_id = db.Column(db.Integer, primary_key=True)
    fname = db.Column(db.String(50), nullable=False)
    lname = db.Column(db.String(50), nullable=False)
    location = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    subject = db.Column(db.String(500), nullable=False)
    message = db.Column(db.Text, nullable=False)
    date = db.Column(db.DateTime, nullable=False)

class Life(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)

class Love(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Attitude(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Business(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Programming(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Sports(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Motivation(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Relationship(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Shayaris(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Memes(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Friendship(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Travel(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Family(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Wedding(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Psychology(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Universe(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, db.ForeignKey('author.id'), nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    

db.create_all()

"""-----------------------------
User Defined Functions
-----------------------------"""
# Get Author id by author name
def getAuthorId(string):
    authorName = string.replace('-', ' ').lower()
    authors = Author.query.filter_by(name=authorName).first()
    return authors.id
    
"""
-----------------------------
Initialize Website Endpoint
-----------------------------
"""
# Many times used variable
categories = Category.query.all()

@app.route("/")
def root():
    # Fetch Categories and Authors
    authors = Author.query.all()

    return render_template('home.html',
        params=params,
        categories=categories, 
        authors=authors,
        stylesheet="css/home.css"
    )

# Quotes by categories
@app.route("/quotes/<string:category>")
def quotes(category):
    category = category.capitalize()

    # Fetch Quotes and it's authors
    i = 0
    quotes = {}
    allquotes = eval(category).query.all()
    for quote in allquotes:
        authid = Author.query.filter_by(id=quote.authorid).first()
        quotes[i] = {}
        quotes[i]['id'] = quote.quoteid
        quotes[i]['quote'] = quote.quotetext
        quotes[i]['image'] = quote.quoteImg
        quotes[i]['author'] = authid.name
        i += 1
    
    # Create Heading
    no_of_quotes = len(quotes)
    if no_of_quotes > 1:
        heading = str(len(quotes)) + " Quotes Found on " + category
    else:
        heading = str(len(quotes)) + " Quote Found on " + category


    return render_template('quotes.html',
        params=params,
        quotes=quotes,
        heading= heading,
        categories=categories,
        stylesheet="css/quotes.css",
        script="js/quotes.js"
    )

# Quotes by authors
@app.route("/author/<string:author>")
def authors(author):
    # Get id of author
    authid = getAuthorId(author)
    author = author.replace('-', ' ').capitalize()

    # Fetch Quotes and it's authors
    i = 0
    quotes = {}
    for cat in categories:
        category = cat.name.capitalize()
        allquotes = eval(category).query.filter_by(authorid=authid).all()
        quotes[i] = {}
        if allquotes != []:
            for quote in allquotes:
                quotes[i]['id'] = quote.quoteid
                quotes[i]['quote'] = quote.quotetext
                quotes[i]['image'] = quote.quoteImg
                quotes[i]['author'] = author
            i += 1

    # Create Heading
    no_of_quotes = len(quotes)
    if no_of_quotes > 1:
        heading = str(len(quotes)) + " Quotes Found by " + author
    else:
        heading = str(len(quotes)) + " Quote Found by " + author

    return render_template('quotes.html',
        params=params,
        quotes=quotes,
        heading=heading,
        categories=categories,
        stylesheet="css/quotes.css",
        script="js/quotes.js"
    )

# Authors Page
@app.route("/contact", methods=["GET", "POST"])
def contact():
    if request.method == "POST":
        firstName = request.form.get('firstName')
        lastName = request.form.get('lastName')
        location = request.form.get('location')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')
        date = datetime.now()

        # Check if required details are entered
        if firstName and email and subject:
            entry = Contact(fname=firstName, lname=lastName, location=location, email=email, subject=subject, message=message, date=date)
            db.session.add(entry)
            db.session.commit()

            flash("Successful! We will contact you soon", "success")
            return redirect(request.referrer)
        else:
            flash("Please Enter required details", "failure")
            return render_template('contact.html',
            categories=categories,
            params=params,
            stylesheet="css/contact.css"
        )

    return render_template('contact.html',
        categories=categories,
        params=params,
        stylesheet="css/contact.css"
    )

# About Page
@app.route("/about")
def about():
    return render_template('about.html',
        categories=categories,
        params=params,
        stylesheet="css/about.css"
    )


"""
QuotesOceans Dashboard
"""

@app.route("/dashboard")
def dashboard():
    return render_template("dashboard/index.html")

@app.route("/dashboard/forms")
def dashboard_forms():
    return render_template("dashboard/forms.html")

@app.route("/dashboard/buttons")
def dashboard_buttons():
    return render_template("dashboard/buttons.html")

@app.route("/dashboard/modals")
def dashboard_modals():
    return render_template("dashboard/modals.html")

@app.route("/dashboard/tables")
def dashboard_tables():
    return render_template("dashboard/tables.html")

@app.route("/dashboard/cards")
def dashboard_cards():
    return render_template("dashboard/cards.html")

@app.route("/dashboard/charts")
def dashboard_charts():
    return render_template("dashboard/charts.html")


# Run Flask app
if __name__ == "__main__":
    app.run(port=8080)