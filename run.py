from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return '''
        <body style="text-align:center;font-weight:900;font-size:20px;font-family:Helvetica,Arial,sans-serif">
            <h1>Hello World, my name is Tomas</h1>
            <p>This container was deployed: <div id="date"></div></p>
            <script>
                var date = new Date();
                document.getElementById("date").innerHTML=date.toLocaleString();
            </script>
        </body>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)