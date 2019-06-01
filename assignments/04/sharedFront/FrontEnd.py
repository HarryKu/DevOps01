import json
from nameko.web.handlers import http
import urllib.request

class FileContentsService:
    name = "getFileContents_service"

    @http('GET', '/getFileContents/<string:file_name>')
    def get_method(self, request, file_name):
        print("hello front" + file_name)
        backendURL = "http://192.168.33.101:8000" + "/getFileContents/" + file_name
        content = urllib.request.urlopen(backendURL).read()
        return json.dumps({'value': json.loads(content.decode('utf8'))['value']})
