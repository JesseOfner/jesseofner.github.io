<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Name - Personal Website</title>
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f9f9f9;
        }

        a {
            text-decoration: none;
            color: #0366d6;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header styles */
        header {
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-size: 24px;
            font-weight: 700;
            color: #333;
        }

        .nav-links {
            display: flex;
            list-style: none;
        }

        .nav-links li {
            margin-left: 30px;
        }

        .nav-links a {
            color: #333;
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: #0366d6;
        }

        .mobile-menu-btn {
            display: none;
            cursor: pointer;
            font-size: 24px;
        }

        /* Hero section */
        .hero {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 100px 0;
            background-color: #f0f5ff;
        }

        .hero-content {
            flex: 1;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
            color: #222;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
            color: #555;
            max-width: 600px;
        }

        .cta-button {
            display: inline-block;
            background-color: #0366d6;
            color: white;
            padding: 12px 30px;
            border-radius: 5px;
            font-weight: 600;
            transition: all 0.3s;
        }

        .cta-button:hover {
            background-color: #0258b8;
            transform: translateY(-2px);
        }

        .hero-image {
            flex: 1;
            display: flex;
            justify-content: flex-end;
        }

        .hero-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        /* Section styling */
        section {
            padding: 80px 0;
        }

        section h2 {
            font-size: 36px;
            margin-bottom: 50px;
            text-align: center;
            color: #222;
        }

        /* Resume section */
        .resume-item {
            margin-bottom: 40px;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }

        .resume-item h3 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #0366d6;
        }

        .resume-item .position {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .resume-item .date {
            font-style: italic;
            color: #666;
            margin-bottom: 15px;
        }

        .resume-item p {
            margin-bottom: 15px;
        }

        .resume-item ul {
            margin-left: 20px;
            margin-bottom: 15px;
        }

        /* Projects section */
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 30px;
        }

        .project-card {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s;
        }

        .project-card:hover {
            transform: translateY(-5px);
        }

        .project-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .project-content {
            padding: 20px;
        }

        .project-content h3 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .project-content p {
            color: #666;
            margin-bottom: 15px;
        }

        .project-tags {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 15px;
        }

        .project-tag {
            background: #f0f5ff;
            color: #0366d6;
            padding: 5px 10px;
            border-radius: 30px;
            font-size: 14px;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        /* Blog section */
        .blog-posts {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 30px;
        }

        .blog-post {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }

        .blog-post img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .blog-content {
            padding: 20px;
        }

        .blog-date {
            color: #666;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .blog-content h3 {
            font-size: 22px;
            margin-bottom: 15px;
        }

        .blog-content p {
            color: #555;
            margin-bottom: 20px;
        }

        .read-more {
            font-weight: 600;
        }

        /* Contact section */
        .contact-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
        }

        .contact-info h3 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .contact-info p {
            margin-bottom: 20px;
        }

        .contact-info .social-links {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }

        .social-link {
            width: 40px;
            height: 40px;
            background: #0366d6;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
            transition: transform 0.3s, background 0.3s;
        }

        .social-link:hover {
            background: #0258b8;
            transform: translateY(-3px);
        }

        .contact-form .form-group {
            margin-bottom: 20px;
        }

        .contact-form label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border 0.3s;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            border-color: #0366d6;
            outline: none;
        }

        .contact-form textarea {
            min-height: 150px;
            resize: vertical;
        }

        .contact-form button {
            background-color: #0366d6;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
        }

        .contact-form button:hover {
            background-color: #0258b8;
        }

        /* Footer */
        footer {
            background-color: #222;
            color: white;
            padding: 50px 0 20px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            margin-bottom: 40px;
        }

        .footer-column {
            flex: 1;
            margin-right: 30px;
        }

        .footer-column:last-child {
            margin-right: 0;
        }

        .footer-column h3 {
            font-size: 20px;
            margin-bottom: 20px;
            color: #fff;
        }

        .footer-column ul {
            list-style: none;
        }

        .footer-column ul li {
            margin-bottom: 10px;
        }

        .footer-column ul li a {
            color: #ddd;
            transition: color 0.3s;
        }

        .footer-column ul li a:hover {
            color: #0366d6;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid #444;
        }

        /* Responsive styles */
        @media (max-width: 992px) {
            .hero {
                flex-direction: column;
                text-align: center;
                padding: 50px 0;
            }

            .hero-content {
                margin-bottom: 40px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .hero p {
                font-size: 18px;
                margin: 0 auto 30px;
            }

            .contact-container {
                grid-template-columns: 1fr;
            }

            .footer-content {
                flex-direction: column;
            }

            .footer-column {
                margin-right: 0;
                margin-bottom: 30px;
            }
        }

        @media (max-width: 768px) {
            .nav-links {
                position: fixed;
                top: 70px;
                left: 0;
                height: 0;
                width: 100%;
                background: white;
                flex-direction: column;
                align-items: center;
                overflow: hidden;
                transition: height 0.3s;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }

            .nav-links.active {
                height: 300px;
                padding: 20px 0;
            }

            .nav-links li {
                margin: 15px 0;
            }

            .mobile-menu-btn {
                display: block;
            }

            section h2 {
                font-size: 28px;
                margin-bottom: 30px;
            }

            .projects-grid, .blog-posts {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Header with navigation -->
    <header>
        <div class="container">
            <nav>
                <div class="logo">Your Name</div>
                <ul class="nav-links">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#resume">Resume</a></li>
                    <li><a href="#projects">Projects</a></li>
                    <li><a href="#blog">Blog</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
                <div class="mobile-menu-btn">☰</div>
            </nav>
        </div>
    </header>

    <!-- Hero section -->
    <section id="home" class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Hello, I'm <span class="highlight">Your Name</span></h1>
                <p>A passionate [Your Profession] specializing in [Your Specialties]. I create [what you create] that help [who you help] achieve [what benefits].</p>
                <a href="#contact" class="cta-button">Get In Touch</a>
            </div>
            <div class="hero-image">
                <img src="/api/placeholder/400/400" alt="Professional headshot">
            </div>
        </div>
    </section>

    <!-- Resume/Experience section -->
    <section id="resume">
        <div class="container">
            <h2>My Experience</h2>

            <div class="resume-item">
                <h3>Company Name</h3>
                <div class="position">Job Title</div>
                <div class="date">January 2020 - Present</div>
                <p>Brief description of your role and responsibilities at this company.</p>
                <ul>
                    <li>Key achievement or responsibility</li>
                    <li>Another significant achievement with measurable results</li>
                    <li>Technology or methodology you implemented or mastered</li>
                </ul>
            </div>

            <div class="resume-item">
                <h3>Previous Company</h3>
                <div class="position">Previous Job Title</div>
                <div class="date">June 2017 - December 2019</div>
                <p>Brief description of your role and responsibilities at this company.</p>
                <ul>
                    <li>Key achievement or responsibility</li>
                    <li>Another significant achievement with measurable results</li>
                    <li>Technology or methodology you implemented or mastered</li>
                </ul>
            </div>

            <!-- Education -->
            <h2>Education</h2>

            <div class="resume-item">
                <h3>University Name</h3>
                <div class="position">Degree Name</div>
                <div class="date">2013 - 2017</div>
                <p>Brief description of your studies, major achievements, or relevant coursework.</p>
                <ul>
                    <li>Relevant course or achievement</li>
                    <li>Academic honor or project</li>
                    <li>Extracurricular activity or leadership role</li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Projects/Portfolio section -->
    <section id="projects">
        <div class="container">
            <h2>My Projects</h2>

            <div class="projects-grid">
                <div class="project-card">
                    <img src="/api/placeholder/400/200" alt="Project 1">
                    <div class="project-content">
                        <h3>Project Name</h3>
                        <p>Brief description of the project, what problem it solves, and what technologies were used.</p>
                        <div class="project-tags">
                            <span class="project-tag">HTML</span>
                            <span class="project-tag">CSS</span>
                            <span class="project-tag">JavaScript</span>
                        </div>
                        <a href="#" class="read-more">View Project →</a>
                    </div>
                </div>

                <div class="project-card">
                    <img src="/api/placeholder/400/200" alt="Project 2">
                    <div class="project-content">
                        <h3>Another Project</h3>
                        <p>Brief description of the project, what problem it solves, and what technologies were used.</p>
                        <div class="project-tags">
                            <span class="project-tag">React</span>
                            <span class="project-tag">Node.js</span>
                            <span class="project-tag">MongoDB</span>
                        </div>
                        <a href="#" class="read-more">View Project →</a>
                    </div>
                </div>

                <div class="project-card">
                    <img src="/api/placeholder/400/200" alt="Project 3">
                    <div class="project-content">
                        <h3>Third Project</h3>
                        <p>Brief description of the project, what problem it solves, and what technologies were used.</p>
                        <div class="project-tags">
                            <span class="project-tag">Python</span>
                            <span class="project-tag">Django</span>
                            <span class="project-tag">PostgreSQL</span>
                        </div>
                        <a href="#" class="read-more">View Project →</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Blog section -->
    <section id="blog">
        <div class="container">
            <h2>Latest Blog Posts</h2>

            <div class="blog-posts">
                <div class="blog-post">
                    <img src="/api/placeholder/400/200" alt="Blog post 1">
                    <div class="blog-content">
                        <div class="blog-date">April 5, 2025</div>
                        <h3>Blog Post Title</h3>
                        <p>A brief excerpt or introduction to your blog post that makes people want to read more...</p>
                        <a href="#" class="read-more">Read More →</a>
                    </div>
                </div>

                <div class="blog-post">
                    <img src="/api/placeholder/400/200" alt="Blog post 2">
                    <div class="blog-content">
                        <div class="blog-date">March 22, 2025</div>
                        <h3>Another Blog Post</h3>
                        <p>A brief excerpt or introduction to your blog post that makes people want to read more...</p>
                        <a href="#" class="read-more">Read More →</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact section -->
    <section id="contact">
        <div class="container">
            <h2>Get In Touch</h2>

            <div class="contact-container">
                <div class="contact-info">
                    <h3>Let's Connect</h3>
                    <p>Have a project in mind or want to discuss potential opportunities? I'd love to hear from you! Fill out the form, and I'll get back to you as soon as possible.</p>
                    <p>
                        <strong>Email:</strong> your.email@example.com<br>
                        <strong>Location:</strong> Your City, Country
                    </p>

                    <div class="social-links">
                        <a href="#" class="social-link">L</a>
                        <a href="#" class="social-link">G</a>
                        <a href="#" class="social-link">T</a>
                    </div>
                </div>

                <div class="contact-form">
                    <form id="contactForm">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" id="name" name="name" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" id="subject" name="subject" required>
                        </div>

                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea id="message" name="message" required></textarea>
                        </div>

                        <button type="submit">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>Your Name</h3>
                    <p>A passionate [Your Profession] focused on creating [what you create] that make a difference.</p>
                </div>

                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#resume">Resume</a></li>
                        <li><a href="#projects">Projects</a></li>
                        <li><a href="#blog">Blog</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>

                <div class="footer-column">
                    <h3>Contact</h3>
                    <p>
                        <strong>Email:</strong> your.email@example.com<br>
                        <strong>Location:</strong> Your City, Country
                    </p>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; 2025 Your Name. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- JavaScript for mobile menu toggle -->
    <script>
        // Mobile menu toggle
        const menuBtn = document.querySelector('.mobile-menu-btn');
        const navLinks = document.querySelector('.nav-links');

        menuBtn.addEventListener('click', () => {
            navLinks.classList.toggle('active');
        });

        // Close menu when clicking on a link
        document.querySelectorAll('.nav-links a').forEach(link => {
            link.addEventListener('click', () => {
                navLinks.classList.remove('active');
            });
        });

        // Contact form handling
        const contactForm = document.getElementById('contactForm');

        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();

            // Collect form data
            const formData = new FormData(contactForm);
            const formObject = Object.fromEntries(formData);

            // Basic form validation
            let isValid = true;
            const requiredFields = ['name', 'email', 'subject', 'message'];

            requiredFields.forEach(field => {
                const input = document.getElementById(field);
                if (!input.value.trim()) {
                    input.style.borderColor = 'red';
                    isValid = false;
                } else {
                    input.style.borderColor = '#ddd';
                }
            });

            if (!isValid) {
                alert('Please fill in all required fields.');
                return;
            }

            // In a real implementation, you would send this data to your server
            // For now, we'll just log it and show a success message
            console.log('Form data:', formObject);

            // Show success message
            alert('Your message has been sent successfully! I will get back to you soon.');

            // Reset form
            contactForm.reset();
        });
    </script>
</body>
</html>
