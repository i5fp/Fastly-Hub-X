from flask import Flask, render_template_string, request, jsonify
import requests

app = Flask(__name__)

HTML_TEMPLATE = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Key Bypass</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
    </style>
</head>
<body class="min-h-screen flex items-center justify-center">
    <div class="bg-white p-8 rounded-xl shadow-2xl w-96">
        <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Key Bypass</h1>
        
        <div class="mb-4">
            <label for="urlInput" class="block text-gray-700 font-bold mb-2">Enter Link</label>
            <input 
                type="text" 
                id="urlInput" 
                placeholder="Paste your link here" 
                class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-purple-500"
            >
        </div>
        
        <button 
            onclick="handleLink()" 
            class="w-full bg-purple-600 text-white py-2 rounded-lg hover:bg-purple-700 transition duration-300"
        >
            Submit
        </button>
        
        <div id="message" class="mt-4 text-center text-gray-600"></div>
        <div id="response" class="mt-2 text-center font-semibold"></div>
    </div>

    <script>
        async function handleLink() {
            const url = document.getElementById("urlInput").value;
            const messageElement = document.getElementById("message");
            const responseElement = document.getElementById("response");

            messageElement.textContent = '';
            responseElement.textContent = '';

            try {
                const response = await fetch('/bypass', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: `url=${encodeURIComponent(url)}`
                });
                
                const data = await response.json();
                
                if (data.error) {
                    messageElement.textContent = 'Error:';
                    responseElement.textContent = data.error;
                    responseElement.classList.add('text-red-500');
                } else {
                    messageElement.textContent = 'Success:';
                    responseElement.textContent = data.result;
                    responseElement.classList.add('text-green-500');
                }
            } catch (error) {
                messageElement.textContent = 'Error:';
                responseElement.textContent = 'Unable to process the request';
                responseElement.classList.add('text-red-500');
            }
        }
    </script>
</body>
</html>
'''

@app.route('/')
def index():
    return render_template_string(HTML_TEMPLATE)

@app.route('/bypass', methods=['POST'])
def bypass_link():
    url = request.form.get('url', '')
    
    try:
        if url.startswith('https://mobile.codex.lol?token='):
            api_url = f"http://helya.pylex.xyz:10234/api/addlink?url={url}"
            response = requests.get(api_url)
            data = response.json()
            return jsonify({'result': data.get('result', 'No result returned')})
        
        elif url.startswith('https://trigonevo.fun/whitelist/?HWID='):
            api_url = f"https://hahabypasser-secret-or-no.vercel.app/bypass?url={url}"
            response = requests.get(api_url)
            data = response.json()
            return jsonify({'result': data.get('result', 'No result returned')})
        
        else:
            return jsonify({'error': 'Invalid URL format'})
    
    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == '__main__':
    app.run(debug=True)
