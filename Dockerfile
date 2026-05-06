FROM alpine
RUN apk add wine wget

RUN "wget https://www.python.org/ftp/python/3.14.4/python-3.14.4-amd64.exe \
    && wine 'python-3.14.4-amd64.exe /quiet TargetDir=C:\\Python Include_doc=0 InstallAllUsers=1 PrependPath=1' \
    && rm python-3.14.4-amd64.exe"

RUN wine pip install pyinstaller pyqt5
