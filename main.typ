#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Mahdi Jankari"
#let location = "Istanbul, Turkey"
#let email = "mjankari42@gmail.com"
#let github = "github.com/mjankari42"
#let linkedin = "linkedin.com/in/mjankari"
#let phone = "+90 534 210 87 46"
#let personal-site = ""

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  // phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "")
 */
== Education

#edu(
  institution: "Altınbaş University",
  location: "Istanbul, Turkey",
  dates: dates-helper(start-date: "Sep 2022", end-date: "Present"),
  degree: "Bachelor of Science Computer Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- Relevant Coursework: Data Structures & Algorithms, Computer Networks, Databases, Software Engineering, Operating Systems, Web Technologies

== Work Experience

#work(
  title: "Software Engineering Intern — Remote",
  location: "Rabat, Morocco",
  company: link("https://www.mtds.com/")[MTDS (Morocco Trade & Development Services)],
  dates: dates-helper(start-date: "Jul 2025", end-date: "Aug 2025"),
)
- Designed and developed a web dashboard for FreeRADIUS network management using *Django*, enabling administrators to monitor and manage network authentication in real time
- Containerised the application with *Docker*, ensuring consistent development and deployment environments
- Collaborated remotely using *Git* for version control, following branch-based workflows for feature development and code review

#work(
  title: "Frontend Engineering Intern — Remote",
  location: "Riyadh, Saudi Arabia",
  company: link("https://www.thrivve.me/en/index.html")[Thrivve],
  dates: dates-helper(start-date: "Jul 2025", end-date: "Sep 2025"),
)
- Built and maintained responsive UI components using *React* and *Vite*, contributing to a Saudi fintech/mobility web application
- Implemented *client-side routing* and *authentication flows* using React Router and token-based auth
- Developed frontend features with *JavaScript, HTML, and CSS*, collaborating with the team via Git

== Projects

// #project(
//   name: "Hyperschedule",
//   // Role is optional
//   role: "Maintainer",
//   // Dates is optional
//   dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
//   // URL is also optional
//   url: "hyperschedule.io",
// )
// - Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
//   - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
// - Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers

#project(
  name: "FastAPI Blog",
  url: "github.com/mjankari42/fastapi-blog",
)
- Built a *RESTful blog* backend in Python using *FastAPI and SQLModel*, implementing full CRUD endpoints for posts with automatic interactive API documentation via Swagger UI
- Designed database schema using SQLModel, defining typed models that serve as both *SQLAlchemy ORM tables* and *Pydantic validation schemas*, reducing boilerplate across data and API layers
- Managed dependencies and virtual environments with *uv*, enforcing code quality and type safety with *Ruff* (linting/formatting) and *ty* (static type checking)

== Extracurricular Activities

#extracurriculars(
  activity: "Zarqa UAV Team — Yildiz University",
  dates: dates-helper(start-date: "Jan 2025", end-date: "Sep 2025"),
)
- Computer Vision & ML Contributor in the Teknofest UAV competition
- Implemented real-time object detection and multi-object tracking on live drone video feeds using YOLOv8 and BYTETrack, targeting competition-grade accuracy and latency
- Analysed flight telemetry and vision pipeline performance using Python, Polars, and Ultralytics to identify bottlenecks and improve model inference efficiency
- Contributing to a multidisciplinary engineering team, managing codebase with Git/GitHub and coordinating development milestones

== Skills
- *Languages*: English, French, Arabic
- *Programming Languages*: Python, JavaScript, HTML/CSS, Rust
- *Frameworks*: Django, Flask, FastAPI, React
- *DevOps*:   Docker, Git, uv (Astral), Vite, Linux (RHEL, Debian)
- *Machine Learning*: YOLOv8, BYTETrack, Polars, Seaborn, SciPy
