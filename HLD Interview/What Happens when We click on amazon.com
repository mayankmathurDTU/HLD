1. User clicks on amazon.com in the browser
   The browser receives the request to open Amazon’s website.

2. Browser checks local cache and DNS cache
   It looks for stored data to reduce loading time.

3. DNS resolution converts amazon.com to an IP address
   The domain name is translated into the nearest Amazon server IP.

4. TCP three-way handshake establishes a reliable connection
   Browser and server confirm they can communicate properly.
   This is needed to ensure data is delivered correctly and in order.

5. SSL/TLS handshake creates a secure HTTPS connection
   Browser verifies Amazon’s identity and encrypts the data.
   This is needed to protect passwords, payments, and user data.

6. Request first reaches Amazon CDN (CloudFront)
   CDN serves static content quickly from nearby locations.

7. CDN forwards request to backend if content is not cached
   Dynamic requests are sent to Amazon’s origin servers.

8. Load balancer distributes traffic across servers
   It sends the request to a healthy server like traffic control.
   This is needed to handle millions of users without overload.

9. Application servers process the request
   Backend logic handles login, products, pricing, and recommendations.

10. Cache layer is checked for frequently used data
    Cached data reduces database load and speeds up response.

11. Databases fetch required information
    Data is retrieved from scalable and replicated databases.

12. Response is returned and browser renders the page
    HTML, CSS, and JavaScript are processed and displayed to the user.
