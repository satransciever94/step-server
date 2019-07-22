# -*- coding: utf-8 -*-

from cgi import parse_qs

bind = "0.0.0.0:8080"

def wsgi_application(environ, start_response):
    # обработка строки запроса (query string)
    zapros = parse_qs(environ['QUERY_STRING'])
    otvetka = ''
    for key in zapros:
        for value in zapros[key]:
            otvetka += key+'='+value+'\n'
    otvetka = otvetka[:len(otvetka)-1]
    # подготовка и передача ответа
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    start_response(status, headers)
    return [ otvetka ]
