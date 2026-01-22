# Nginx Log Analyzer (CLI)

A simple command-line log analysis tool written in **Bash** to analyze Nginx access logs.  

---

## Features

The script analyzes an Nginx access log file and outputs:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 HTTP response status codes
- Top 5 user agents

---

## Log Format Assumption

The script assumes a **standard Nginx access log format**, containing:

- IP address  
- Date & time  
- Request method and path  
- HTTP status code  
- Response size  
- Referrer  
- User agent  

### Example
```text
127.0.0.1 - - [16/Aug/2024:10:06:48 +0000] "GET /index.html HTTP/1.1" 200 612 "-" "Mozilla/5.0"
```

### Usage

Make the Script Executeable

```bash
chmod +x nginx-log.sh
```

Run the analyzer
```bash
./nginx-log.sh <logfile>
```

### Example Output
```
Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests

Top 5 most requested paths:
/api/v1/users - 1000 requests
/api/v1/products - 600 requests
/api/v1/orders - 50 requests
/api/v1/payments - 30 requests
/api/v1/reviews - 20 requests

Top 5 response status codes:
200 - 1000 requests
404 - 600 requests
500 - 50 requests
401 - 30 requests
304 - 20 requests
```

