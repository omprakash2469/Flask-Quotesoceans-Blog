from flask import Flask, render_template, request, flash, redirect, session, url_for
from datetime import datetime
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
import json, os, shutil

app = Flask(__name__)

# Import json file
with open('config.json', "r") as c:
    params = json.load(c)["params"]

app.config['SQLALCHEMY_DATABASE_URI'] = params['db_uri']
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
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


class Life(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)

class Love(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Attitude(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Business(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Programming(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Sports(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Motivation(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Relationship(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Philosophy(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Spirituality(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Friendship(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Travel(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Family(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Wedding(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Psychology(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)
    
class Universe(db.Model):
    quoteid = db.Column(db.Integer, primary_key=True)
    quotetext = db.Column(db.Text, nullable=False)
    quoteImg = db.Column(db.String(100), nullable=False)
    authorid = db.Column(db.Integer, nullable=False)
    quotedate = db.Column(db.Integer, nullable=False)

class Contact(db.Model):
    user_id = db.Column(db.Integer, primary_key=True)
    fname = db.Column(db.String(50), nullable=False)
    lname = db.Column(db.String(50), nullable=False)
    location = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    subject = db.Column(db.String(500), nullable=False)
    message = db.Column(db.Text, nullable=False)
    date = db.Column(db.DateTime, nullable=False)


"""
=====================================
Initialize Website Endpoint
=====================================
"""
@app.route("/")
def root():
    # Fetch Categories and Authors
    authors = Author.query.order_by(Author.name.asc()).all()
    categories = Category.query.order_by(Category.name.asc()).all()

    return render_template('home.html',
        params=params,
        categories=categories,
        authors=authors
    )

# Quotes by categories
@app.route("/quotes/<string:category>")
def quotes(category):
    category = category.capitalize()

    # Fetch Quotes and it's authors
    i = 0
    quotes = {}
    try:
        allquotes = eval(category).query.all()
    except:
        flash("Quotes Doesn't Exists")
        return redirect(url_for("page_not_found"))

    for quote in allquotes:
        authid = Author.query.filter_by(id=quote.authorid).first()
        quotes[i] = {}
        quotes[i]['id'] = quote.quoteid
        quotes[i]['quote'] = quote.quotetext
        quotes[i]['image'] = quote.quoteImg
        quotes[i]['author'] = authid
        i += 1
    
    # Create Heading
    no_of_quotes = len(quotes)
    if no_of_quotes > 1:
        heading = str(len(quotes)) + ' Quotes Found on "' + category  + '"'
    else:
        heading = str(len(quotes)) + ' Quote Found on "' + category + '"'

    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template('quotes.html',
        params=params,
        quotes=quotes,
        heading= heading,
        categories=categories,
        category=category.lower(),
        script="js/quotes.js"
    )

# Quotes by authors
@app.route("/author/<string:author>")
def authors(author):
    # Get id of author
    try:
        author = author.replace('-', ' ').title()
        author = Author.query.filter_by(name=author).first()
        authid = author.id
    except:
        flash("Author Doesn't Exists")
        return redirect(url_for("page_not_found"))

    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    
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
                quotes[i]['author'] = author.name
                quotes[i]['category'] = category

            i += 1

    # Create Heading
    
    author = author.name.replace('-', ' ').capitalize()
    if quotes[0] != {}:
        heading = str(len(quotes)) + ' Quotes Found by "' + author.title() + '"'
    else:
        heading = 'No Quote Found by "' + author.title() + '"'

    return render_template('quotes.html',
        params=params,
        quotes=quotes,
        heading=heading,
        categories=categories,
        script="js/quotes.js"
    )

# Authors Page
@app.route("/contact", methods=["GET", "POST"])
def contact():
    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()

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
            params=params
        )

    return render_template('contact.html',
        categories=categories,
        params=params
    )

# About Page
@app.route("/about")
def about():
    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template('about.html',
        categories=categories,
        params=params
    )


"""
=====================================
Dashboard Endpoints
=====================================
"""
@app.route("/dashboard")
def dashboard():
    if 'loggedin' not in session:
        return redirect('/dashboard/login')
    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()

    # Fetch Data 
    no_of_authors = Author.query.count() # Number of Authors
    no_of_categories = Category.query.count() # Number of Categories
    no_of_contacts = Contact.query.count() # Number of Categories
    # Number of Quotes
    no_of_quotes = 0
    for cat in categories:
        q = eval(cat.name.capitalize()).query.count()
        no_of_quotes += int(q)
    data = {
        "authors": no_of_authors,
        "categories": no_of_categories,
        "quotes": no_of_quotes,
        "contacts": no_of_contacts
    }
    return render_template("dashboard/index.html", username=params['username'], data=data, categories=categories)

# ------------ Dashboard Categories ------------
@app.route("/dashboard/categories")
def dashboard_categories():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/categories.html", categories=categories)

# Add Dashboard Categories
@app.route("/dashboard/categories/add", methods=['GET', 'POST'])
def dashboard_add_categories():
    # Check if user is loggedin
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    # Validate data and process
    if request.method == "POST":
        category = request.form.get('category').lower()
        image_name = request.form.get('image_name')
        image = request.files['image']
        # Check if all details are filled
        if image and image_name:
            # Create image file name
            img_name = image_name.strip().lower() + os.path.splitext(image.filename)[1]
            img_name = img_name.replace(" ", "-")
        else:
            flash("Please upload image and enter required details", "text-red-600")
            return redirect(request.referrer)

        # Check if category name is filled
        if category:
            entry = Category(name=category, catImage=img_name)
            try:
                # Create folder if not exists
                if not os.path.exists(params['category_file_path']):
                    os.makedirs(params['category_file_path'])
                # Save Image
                image.save(os.path.join(params['category_file_path'], secure_filename(img_name)))
                # Insert into database
                db.session.add(entry)
                db.session.commit()
                flash("Successfully! Added Category", "text-green-500")
                return redirect(url_for('dashboard_add_categories'))
            except Exception as e:
                flash("Unexpected Error Occured: "+ str(e), "text-red-600")
                return redirect(request.referrer)
        else:
            flash("Please enter category name", "text-red-600")
            return redirect(request.referrer)

    # Form Variables
    form = {
        "title": "Add Category",
        "id": "",
        "category": "",
        "image": "",
        "action": url_for('dashboard_add_categories'),
        "button": "Add"
    }
    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/categories_form.html", form=form, categories=categories)

# Update Dashboard Categories
@app.route("/dashboard/categories/update", methods=['GET', 'POST'])
def dashboard_update_categories():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    id = request.form.get('id')
    if request.method == "POST" and id:
        try:
            # Get Category Data
            category = Category.query.filter_by(id=id).first()
            category_name = category.name.lower()
            category_image = category.catImage.lower()
        except:
            flash("Error! Category Doesn't Exists", "text-red-600")
            return redirect(url_for("dashboard_categories"))

        # Delete Categories
        if request.form.get('action')=='delete':
            try:
                # Remove associated image
                if os.path.exists(params['category_file_path'] + category_image):
                    os.remove(os.path.join(params['category_file_path'], category_image))
                # Delete record from table
                db.session.delete(category)
                db.session.commit()
                flash("Successfully! Deleted Category", "text-green-500")
                return redirect(url_for('dashboard_categories'))
            except Exception as e:
                flash("Unexpected Error Occured: "+ str(e), "text-red-600")
                return redirect(url_for('dashboard_categories'))
        elif request.form.get('action')=='edit':
                # Form Variables
                form = {
                    "title": "Update Category",
                    "id": id,
                    "category": category_name,
                    "image": category_image,
                    "action": url_for('dashboard_update_categories'),
                    "button": "Update"
                }
                # Get all Categories
                categories = Category.query.order_by(Category.name.asc()).all()
                return render_template("dashboard/categories_form.html", form=form, categories=categories)
        elif request.form.get('category'):
                new_category = request.form.get('category').lower()
                image_name = request.form.get('image_name')
                image = request.files['image']
                # Check if all details are filled
                uploaded_new_image = False
                if image.filename and image_name:
                    # Create image file name
                    img_name = image_name.strip().lower() + os.path.splitext(image.filename)[1]
                    img_name = img_name.replace(" ", "-")
                    uploaded_new_image = True

                # Create or rename category folder
                if os.path.exists(params['quotes_file_path']+category_name):
                    os.rename(params['quotes_file_path']+category_name, params['quotes_file_path']+new_category)
                else:
                    os.makedirs(params['quotes_file_path']+new_category)

                # Edit Category Name
                try:
                    category.name = new_category
                    # Handle Image Upload
                    if uploaded_new_image:
                        imageFile = params['category_file_path']
                        if os.path.exists(imageFile):
                            # Remove old image file
                            os.remove(os.path.join(imageFile, secure_filename(category.catImage)))
                            # Upload new image file
                            image.save(os.path.join(imageFile, secure_filename(img_name)))
                        category.catImage = img_name
                    
                    # Update in database
                    db.session.commit()
                    flash("Successfully! Updated Category", "text-green-500")
                    return redirect(url_for('dashboard_categories'))
                except Exception as e:
                    flash("Unexpected Error Occured: "+ str(e), "text-red-600")
                    return redirect(request.referrer)
    else:
        flash("Unexpected Error Occured", "text-red-600")
        return redirect(url_for('page_not_found'))


# ------------ Dashboard Authors ------------ 
@app.route("/dashboard/authors")
def dashboard_authors():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))

    authors = Author.query.order_by(Author.id.desc()).all()
    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/authors.html", authors=authors, categories=categories)

# Add Dashboard Authors
@app.route("/dashboard/authors/add", methods=['GET', 'POST'])
def dashboard_add_authors():
    # Check if user is loggedin
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    # Validate data and process
    if request.method == "POST":
        author = request.form.get('author')
        if author:
            entry = Author(name=author.lower())
            db.session.add(entry)
            db.session.commit()
            flash("Successfully! Added Author", "text-green-500")
            return redirect(url_for('dashboard_add_authors'))
        else:
            flash("Error! Please Enter Author Name", "text-red-600")
            return redirect(url_for('dashboard_add_authors'))

    # Form Variables
    form = {
        "title": "Add Authors",
        "id": "",
        "author": "",
        "action": url_for('dashboard_add_authors'),
        "button": "Add"
    }
    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/authors_form.html", form=form, categories=categories)

# Update Dashboard Authors
@app.route("/dashboard/authors/update", methods=['GET', 'POST'])
def dashboard_update_authors():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    id = request.form.get('id')
    if request.method == "POST" and id:
        # Get the Author Data
        try:
            author = Author.query.filter_by(id=id).first()
            author_name = author.name.lower()
        except:
            flash("Error! Author Doesn't Exists", "text-red-600")
            return redirect(url_for("dashboard_authors"))

        # Delete Author
        if request.form.get('action') == "delete":
            db.session.delete(author)
            db.session.commit()
            flash("Successfully Deleted Author", "text-green-500")
            return redirect(url_for("dashboard_authors"))
            
        # Display Edit form
        elif(request.form.get('action')=="edit"):
            # Form Variables
            form = {
                "title": "Edit Authors",
                "id": id,
                "author": author_name,
                "action": url_for('dashboard_update_authors'),
                "button": "Update"
            }
            # Get all Categories 
            categories = Category.query.order_by(Category.name.asc()).all()
            return render_template("dashboard/authors_form.html", form=form, categories=categories)

        # Edit Author
        elif(request.form.get('author')):
            authorName = request.form.get('author').lower()
            author.name = authorName
            db.session.commit()
            flash("Successfully Updated Author", "text-green-500")
            return redirect(url_for("dashboard_authors"))
        else:
            flash("Try Again! Unexpected Error Occured", "text-red-600")
            return redirect(url_for("dashboard_authors"))
    else:
        flash("Refresh and Try Again! Unexpected Error Occured", "text-red-600")
        return redirect(url_for("dashboard_authors"))

# ------------ Dashboard Quotes ------------ 
@app.route("/dashboard/quotes/<string:category>")
def dashboard_quotes(category):
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    try:
        quotes = eval(category.capitalize()).query.all()
    except Exception as e:
        flash("Category Doesn't Exists " + str(e))
        return redirect(url_for('page_not_found'))

    all_quotes = {}
    i = 0
    for quote in quotes:
        all_quotes[i] = {}
        auth = Author.query.filter_by(id=quote.authorid).first()
        all_quotes[i]['id'] = quote.quoteid
        all_quotes[i]['quote'] = quote.quotetext
        all_quotes[i]['image'] = quote.quoteImg
        all_quotes[i]['author'] = auth.name
        all_quotes[i]['date'] = quote.quotedate
        i+=1

    # Get all Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/quotes.html", categories=categories, quotes=all_quotes, category=category)

# Add Dashboard Quotes
@app.route("/dashboard/quotes/add", methods=['GET', 'POST'])
def dashboard_add_quotes():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    if request.method == "POST":
        quote = request.form.get("quote")
        author = request.form.get("author")
        categories = request.form.getlist("category")
        image = request.files['image']
        image_name = request.form.get("image_name")

        # Check if Image is uploaded
        if image.filename == "":
            flash("Please Upload Image", "text-red-600")
            return redirect(url_for('dashboard_add_quotes'))
        else:
            img_name = image_name.strip().lower() + os.path.splitext(image.filename)[1]
            img_name = img_name.replace(" ", "-")
            
        # Check quote, authors and categories
        if quote and author and categories != []:
            try:
                for cat in categories:
                    imageDir = params["quotes_file_path"] + cat.lower() + "/"
                    # Create Quote Image folder if not exists
                    if not os.path.exists(imageDir):
                        os.makedirs(imageDir)
                    # Save Image
                    image.save(os.path.join(imageDir, img_name))
                    # Add Quote
                    entry = eval(cat.capitalize())(quotetext=quote, quoteImg=img_name, authorid=author, quotedate=datetime.utcnow())
                    db.session.add(entry)
                    db.session.commit()
                flash("Successfully! Added New Quote", "text-green-500")
                return redirect(url_for('dashboard_add_quotes'))
            except Exception as e:
                flash("Unexpected Error Occured: "+ str(e), "text-red-600")
                return redirect(url_for('dashboard_add_quotes'))
        else:
            flash("Please Fill required details", "text-red-600")
            return redirect(url_for('dashboard_add_quotes'))
        
    # Form Variable
    form = {
        "title": "Add Quote",
        "id": "",
        "quote": "",
        "image": "",
        "authorid": "",
        "action": url_for('dashboard_add_quotes'),
        "button": "Add",
        "authors": Author.query.all()
    }

    # Get Authors and Categories 
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/quotes_form.html", categories=categories, form=form)

# Update Dashboard Quotes
@app.route("/dashboard/quotes/update", methods=['GET', 'POST'])
def dashboard_update_quotes():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    qid = request.form.get('id')
    category = request.form.get('category')
    if request.method == "POST" and qid and category:
        # Get all Categories
        categories = Category.query.order_by(Category.name.asc()).all()
        try:
            # Get Category Data
            quotes = eval(category.capitalize()).query.filter_by(quoteid=qid).first()
            quote = quotes.quotetext
            image = quotes.quoteImg
            previous_image = quotes.quoteImg
            authorid = quotes.authorid
            # Get all categories contains this quote
            quoteCat = []
            for cat in categories:
                checkQuote = eval(cat.name.capitalize()).query.filter_by(quotetext=quote).count()
                if checkQuote > 0:
                    quoteCat.append(cat.name.lower())
        except Exception as e:
            flash("Error! Quote Doesn't Exists " + str(e), "text-red-600")
            return redirect(url_for("dashboard_quotes", category=category.lower()))

        # Delete Categories
        if request.form.get('action')=='delete':
            try:
                # Remove associated image
                imageDir = params['quotes_file_path'] + category.lower()
                if image and os.path.exists(imageDir):
                    os.remove(imageDir + "/" + image)

                # Delete Quote from table
                db.session.delete(quotes)
                db.session.commit()
                flash("Successfully! Deleted Quote", "text-green-500")
                return redirect(url_for("dashboard_quotes", category=category.lower()))
            except Exception as e:
                flash("Unexpected Error Occured: "+ str(e), "text-red-600")
                return redirect(url_for("dashboard_quotes", category=category.lower()))
        elif request.form.get('action')=='edit':
                # Form Variable
                form = {
                    "title": "Update Quote",
                    "id": qid,
                    "quote": quote,
                    "image": image,
                    "authorid": authorid,
                    "action": url_for('dashboard_update_quotes'),
                    "button": "Update",
                    "authors": Author.query.all()
                }

                # Get all Categories
                categories = Category.query.order_by(Category.name.asc()).all()

                form["quote_categories"] = quoteCat
                form["category"] = category.lower()
                return render_template("dashboard/quotes_form.html", form=form, categories=categories)
        elif request.form.get('authorid') and request.form.get('quote') and request.form.getlist('category'):
                # Image, Quote, Author
                new_author = request.form.get('authorid')
                new_quote = request.form.get('quote')
                new_categories = request.form.getlist('category')
                new_image = request.files['image']
                new_image_name = request.form.get('image_name')
                # Check if new image is uploaded
                uploaded_new_image = False
                if new_image.filename and new_image_name:
                    # Create image file name
                    img_name = new_image_name.strip().lower() + os.path.splitext(new_image.filename)[1]
                    image = img_name.replace(" ", "-")
                    uploaded_new_image = True
                
                if new_categories != []:
                    # Delete old Quote and it's image from all categories
                    for cat in quoteCat:
                        delete_quote = eval(cat.capitalize()).query.filter_by(quotetext=quote).first()

                        # Delete quote
                        db.session.delete(delete_quote)
                        db.session.commit()

                    # Add new Quote and image to given categories
                    try:
                        for cat in new_categories:
                            entry = eval(cat.capitalize())(quotetext=new_quote, quoteImg=image, authorid=new_author, quotedate=datetime.utcnow())
                            db.session.add(entry)
                            db.session.commit()

                            if uploaded_new_image:
                                # Save New Image
                                new_image.save(os.path.join(params['quotes_file_path'], + cat + "/" + secure_filename(image)))
                            else:
                                shutil.copy(params['quotes_file_path'] + category.lower() + "/" + image, params['quotes_file_path'] + cat + "/" + image)
                    except Exception as e:
                        flash("Unexpected Error Occured: "+ str(e), "text-red-600")
                        return redirect(url_for('page_not_found'))
                    
                    # Delete Old Images
                    if uploaded_new_image:
                        for cat in quoteCat:
                            old_image = params['quotes_file_path']+ cat +"/"+previous_image
                            # Delete Associated Image
                            if os.path.exists(old_image):
                                os.remove(old_image)
                else:
                    flash("Please Select Categories", "text-red-600")
                    return redirect(request.referrer)
    else:
        flash("Unexpected Error Occured", "text-red-600")
        return redirect(url_for('page_not_found'))

@app.route("/dashboard/contacts", methods=['GET', 'POST'])
def dashboard_contacts():
    if 'loggedin' not in session:
        return redirect(url_for('dashboard_login'))
    
    if request.method == "POST":
        id = request.form.get('user')
        try:
            entry = Contact.query.filter_by(user_id=id).first()
            db.session.delete(entry)
            db.session.commit()
            flash("Successfully! Deleted User Contact")
            return redirect(request.referrer)
        except Exception as e:
            flash("Unexpected Error Occured: " + str(e))
            return redirect(request.referrer)

    contacts = Contact.query.all()
    # Get all Categories
    categories = Category.query.order_by(Category.name.asc()).all()
    return render_template("dashboard/contacts.html", contacts=contacts, categories=categories)

"""
=====================================
Auth Endpoints
=====================================
"""
@app.route("/dashboard/login", methods=['GET', 'POST'])
def dashboard_login():
    if 'loggedin' in session:
        return redirect(url_for('dashboard'))

    if request.method == "POST":
        username = request.form.get('username')
        password = request.form.get('password')

        if username and password:
            if username == params['username'] and password == params['password']:
                session["loggedin"] = True
                return redirect(url_for('dashboard'))
            else:
                flash("Incorrect Credentials! Try Again")
                return render_template("dashboard/login.html")
        else:
            flash("Please Enter Your Credentials")
            return render_template("dashboard/login.html")

    return render_template("dashboard/login.html")

@app.route("/dashboard/logout")
def dashboard_logout():
    session.pop('loggedin', None)
    return redirect(request.referrer)

@app.route("/error")
def page_not_found():
    return render_template("error.html")

# Run Flask app for Development ENV
if __name__ == "__main__":
    app.run(debug=True)
# Run Flask app for Production ENV
# if __name__ == "__main__":
#     app.run(host='0.0.0.0')