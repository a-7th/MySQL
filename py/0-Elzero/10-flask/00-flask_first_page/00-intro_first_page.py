# - Flask Is Micro Framework Built With Python
# --------------------------------------------
# - HTML
# - CSS
# - JavaScript
# --------------------------------------------

from flask import Flask

skills_app = Flask(__name__)

@skills_app.route("/")
def homepage():
  return "PIPI from flask"

@skills_app.route("/about")
def about():
  return "About Page From Flask Framework"

if __name__ == "__main__":
  skills_app.run(debug=True, port=9000)