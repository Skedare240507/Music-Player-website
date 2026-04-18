<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact - Sahil Kedare </title>
    <link rel="stylesheet" href="styles.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet" />
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1306297620030567"
        crossorigin="anonymous"></script>

    <style>
        a {
            text-decoration: none;
            color: #ffffff;
            transition: color 0.3s;
        }

        a:hover {
            color: #ff5722;
        }

        .contact-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .contact-header h1 {
            font-size: 2.5rem;
            color: #ff5722;
            margin-bottom: 10px;
        }

        .contact-header p {
            font-size: 1.2rem;
            color: #cccccc;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
        }

        .contact-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
        }

        .contact-info {
            flex: 1;
            min-width: 300px;
            padding: 20px;
            background-color: #1f1f1f;
            border-radius: 8px;
            color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .contact-info h3 {
            color: #ff5722;
            margin-bottom: 15px;
        }

        .contact-info p {
            margin: 10px 0;
        }

        .contact-form-container {
            flex: 1;
            min-width: 300px;
        }

        .contact-form {
            background-color: #1f1f1f;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            color: #ffffff;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #333;
            color: #ffffff;
        }

        .form-group textarea {
            resize: none;
        }

        .contact-form button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #ff5722;
            border: none;
            border-radius: 5px;
            color: #ffffff;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .contact-form button:hover {
            background-color: #e64a19;
        }
    </style>
</head>

<body>
    <?php include("includes/includedFiles.php"); ?>

    <main class="contact fade-in">
        <section class="container">
            <div class="contact-header">
                <h1>Contact Us</h1>
                <p>
                    Feel free to reach out via the contact form
                    <?php echo $userLoggedIn->getFirstAndLastName(); ?>
                </p>
            </div>

            <div class="contact-container">
                <div class="contact-form-container">
                    <div class="contact-form">
                        <form action="https://api.web3forms.com/submit" method="POST" id="form">
                            <input type="hidden" name="access_key" value="dc9f679d-429e-444a-8ff7-744011305b93" />

                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" name="name" id="name" placeholder="Your Name" required />
                            </div>

                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" name="email" id="email" placeholder="Your Email" required />
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="text" name="phone" id="phone" placeholder="Your Phone" required />
                            </div>

                            <div class="form-group">
                                <label for="message">Your Message</label>
                                <textarea name="message" id="message" rows="5" placeholder="Your Message" required></textarea>
                            </div>

                            <button type="submit">Send Message</button>
                        </form>
                    </div>
                </div>

                <div class="contact-info">
                    <h3>Contact Details</h3>
                    <p><strong>Email:</strong> kedaresahil70@gmail.com</p>
                    <p><strong>Phone:</strong> +91 - 9503494953 </p>
                    <p><strong>Address:</strong> sambhajinagar <br />Chhatrapati Sambhajinagar, Maharashtra - 4311001</p>
                </div>
            </div>
        </section>
    </main>
</body>

</html>