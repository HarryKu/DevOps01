import json
from nameko.web.handlers import http
import urllib.request
from nameko.dependency_providers import Config

class FileContentsService:
    name = "getFileContents_service"
    config = Config()

    @http('GET', '/getFileContents/<string:file_name>')
    def get_method(self, request, file_name):
        print("hello front" + file_name)
        ip = self.config.get('IP')
        backendURL = "http://" + ip + "/getFileContents/" + file_name
        content = urllib.request.urlopen(backendURL).read()
        return json.dumps({'value': json.loads(content.decode('utf8'))['value']})
