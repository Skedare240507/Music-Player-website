# 🎵 Geet – Music Streaming Website

A full-stack, ad-free music streaming web app. Users can create an account, browse albums, search for songs, artists and albums, build their own playlists and listen through a persistent player bar that keeps playing while they move between pages.

![Browse page](assets/images/Screenshot_2025-04-17_110622.png)

---

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Tech Stack](#tech-stack)
- [How It Works](#how-it-works)
- [Project Structure](#project-structure)
- [Pages](#pages)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Future Improvements](#future-improvements)
- [Author](#author)
- [License](#license)

---

## Features

**Account**
- Sign up with username, first name, last name, email and password (both email and password are entered twice to avoid typos)
- OTP verification during registration
- Log in and log out
- Update your account details (for example, your email) from the settings page
- Switch Mode option in settings for changing the look of the site

**Music discovery**
- Home page with a grid of curated albums and playlists such as Bollywood Top Hits, Trending Punjabi, 90s HITS, Trending Telugu and HOT HITS MARATHI
- Sidebar with quick access to Top Albums and Top Artists
- Dedicated album pages showing the cover, album name, creator, song count and the full track list with durations
- Dedicated artist pages

**Search**
- Search for songs, artists and albums from a single search box
- Results are grouped into Songs, Artists and Albums
- Friendly message when nothing matches

**Playlists**
- Create new playlists from the Your Playlists page
- View all of your playlists in one place

**Music player**
- Play and pause
- Next and previous track
- Shuffle and repeat
- Seek bar with current time and total duration
- Volume slider
- Shows the current song name, artist and cover art
- The player stays fixed at the bottom of the page, so music keeps playing while you browse (AJAX page loading)

**Other**
- Contact page with a message form
- Privacy policy page
- Admin panel for managing content
- Responsive sidebar navigation with a collapsible menu

---

## Screenshots

| Login | Sign up |
|-------|---------|
| ![Login](assets/images/Screenshot_2025-04-17_110420.png) | ![Sign up](assets/images/Screenshot_2025-04-17_110434.png) |

| Browse | Sidebar navigation |
|--------|--------------------|
| ![Browse](assets/images/Screenshot_2025-04-17_110622.png) | ![Sidebar](assets/images/Screenshot_2025-04-17_110640.png) |

| Search | Search results |
|--------|----------------|
| ![Search](assets/images/Screenshot_2025-04-17_110759.png) | ![Search results](assets/images/Screenshot_2025-04-17_111032.png) |

| Album page | Your playlists |
|------------|----------------|
| ![Album](assets/images/Screenshot_2025-04-17_111055.png) | ![Playlists](assets/images/Screenshot_2025-04-17_110825.png) |

| Settings |
|----------|
| ![Settings](assets/images/Screenshot_2025-04-17_110957.png) |

---

## Tech Stack

| Layer | Technology |
|-------|------------|
| Frontend | HTML5, CSS3, JavaScript, jQuery |
| Backend | PHP |
| Database | MySQL |
| Data exchange | AJAX, JSON |
| Package manager | Composer |
| Local server | XAMPP (Apache + MySQL) |

---

## How It Works

1. A new user registers and verifies the account with an OTP.
2. After logging in, the user lands on the browse page with albums and playlists.
3. Search sends the typed term to the server and shows matching songs, artists and albums.
4. Clicking an album opens its track list. Clicking a song loads it into the player bar.
5. The player bar is loaded once and stays on the page, so playback is not interrupted when the user moves around the site.
6. Playlists and user details are stored in MySQL and tied to the logged-in user.

---

## Project Structure

```
Music-Player-website/
├── admin/              # Admin panel
├── assets/             # CSS, JavaScript, images (including README screenshots) and audio files
├── includes/           # Shared PHP files (config, header, footer, helpers)
├── vendor/             # Composer dependencies
├── .github/workflows/  # GitHub Actions workflows
├── index.php           # Landing page
├── register.php        # Login and sign up
├── verify-otp.php      # OTP verification
├── browse.php          # Home / browse page
├── search.php          # Search page
├── album.php           # Album page
├── artist.php          # Artist page
├── playlist.php        # Single playlist page
├── yourMusic.php       # User's playlists
├── settings.php        # Account settings
├── updateDetails.php   # Update user details
├── contact.php         # Contact page
├── privacy.html        # Privacy policy
├── composer.json       # PHP dependencies
└── geet (4).sql        # Database dump
```

---

## Pages

| Page | File | Description |
|------|------|-------------|
| Login / Sign up | `register.php` | Create an account or log in |
| OTP | `verify-otp.php` | Verify the account |
| Browse | `browse.php` | Home page with albums and playlists |
| Search | `search.php` | Search songs, artists and albums |
| Album | `album.php?id=` | Album details and track list |
| Artist | `artist.php?id=` | Artist details and songs |
| Your Playlists | `yourMusic.php` | All of the user's playlists |
| Playlist | `playlist.php?id=` | Songs inside a playlist |
| Settings | `settings.php` | User details, logout and switch mode |
| Update Details | `updateDetails.php` | Change account details |
| Contact | `contact.php` | Contact form |

---

## Getting Started

### Prerequisites

- PHP 7.4 or higher
- MySQL / MariaDB
- Composer
- XAMPP, WAMP or any Apache + PHP + MySQL setup

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Skedare240507/Music-Player-website.git
   ```

2. **Move it into your server folder**

   Copy the project folder into `htdocs` (XAMPP) or `www` (WAMP).

3. **Install dependencies**
   ```bash
   cd Music-Player-website
   composer install
   ```

4. **Create the database**
   - Start Apache and MySQL from the XAMPP control panel
   - Open phpMyAdmin at `http://localhost/phpmyadmin`
   - Create a database named `geet`
   - Import `geet (4).sql` into it

5. **Configure the database connection**

   Open the config file inside the `includes/` folder and set your host, username, password and database name (`geet`).

6. **Run the project**

   Open `http://localhost/Music-Player-website` in your browser.

---

## Usage

1. Open the site and create a free account on the sign up form.
2. Verify the OTP sent during registration.
3. Log in with your username and password.
4. Browse albums on the home page, or open the sidebar to jump to Top Albums and Top Artists.
5. Use **Search** to find a song, artist or album.
6. Open **Your Playlists** and click **New Playlist** to create a playlist.
7. Use the player bar at the bottom to play, pause, skip, shuffle, repeat and change the volume.
8. Open your name in the sidebar to reach **Settings**, where you can update your details, log out or switch the mode.

---

## Future Improvements

- Add songs to playlists directly from the album page
- Liked songs and listening history
- Follow artists
- Song recommendations
- Better mobile layout

---

## Author

**Sahil Kedare**
GitHub: [@Skedare240507](https://github.com/Skedare240507)

---

## License

This is a personal project by Sahil Kedare. © 2025 All rights reserved. The code may not be copied, redistributed or used commercially without permission.

> Album artwork and songs shown in this project belong to their respective owners and are used here for learning and demonstration only.
