import json
from nameko.web.handlers import http

class FileContentsService:
    name = "getFileContents_service"

    @http('GET', '/getFileContents/<string:file_name>')
    def get_method(self, request, file_name):
        print("hello back" + file_name)
        file_name = "./files/" + file_name
        content = ""
        try:
            with open(file_name, 'r') as fin:
                 content = fin.read()
        except:
            content = "Sorry, no such file name!"
        return json.dumps({'value': content})
