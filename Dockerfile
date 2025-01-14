FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# RUN python monthly_revenue_forecast.py
EXPOSE 5000
ENV NAME World
CMD ["flask", "run", "--host=0.0.0.0"]
