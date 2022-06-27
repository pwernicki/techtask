from flask import Flask, jsonify

app = Flask(__name__)

@app.errorhandler(404)
def server_error_404(err):
    app.logger.exception(err)
    return (jsonify(status="Not Found"), 404)

@app.errorhandler(Exception)
def server_error(err):
    app.logger.exception(err)
    return (jsonify(status="Internal Server Error"), 500)

import api_methods

if __name__ == '__main__':
    app.jinja_env.auto_reload = False
    app.run(debug=False, host='0.0.0.0', port=8088)
