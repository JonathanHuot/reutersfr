import bottle


@bottle.get("/")
def main():
    from bottle import template
    return template("reuters-frame.html")

bottle.run(server="cherrypy", host="0.0.0.0", port=8085)
