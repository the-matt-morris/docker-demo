FROM python:3.10.6

WORKDIR /app
COPY . /app

# Install python dependencies
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run" ]
CMD ["app.py"]
