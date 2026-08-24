const nameInput = document.getElementById("name");
const emailInput = document.getElementById("email");
const phoneInput = document.getElementById("phone");
const dateInput = document.getElementById("date");
const timeInput = document.getElementById("time");
const peopleInput = document.getElementById("people");
const messageInput = document.getElementById("message");
const bookBtn = document.getElementById("bookBtn");

bookBtn.addEventListener("click", function () {
  // Name
  if (nameInput.value.trim() === "") {
    alert("Please enter your name");
    return;
  }

  // Email
  if (emailInput.value.trim() === "") {
    alert("Please enter your email");
    return;
  }

  if (!emailInput.value.includes("@")) {
    alert("Please enter a valid email");
    return;
  }

  // Phone
  if (phoneInput.value.trim() === "") {
    alert("Please enter your phone number");
    return;
  }

  // Date
  if (dateInput.value === "") {
    alert("Please select a date");
    return;
  }

  // Time
  if (timeInput.value === "") {
    alert("Please select a time");
    return;
  }

  // Number of people
  if (peopleInput.value === "" || peopleInput.value <= 0) {
    alert("Please enter the number of people");
    return;
  }

  // Success
  alert("Your table has been booked successfully! 🎉");
});

// Contact Us

const contactName = document.getElementById("contactName");
const contactEmail = document.getElementById("contactEmail");
const contactMessage = document.getElementById("contactMessage");
const sendMessageBtn = document.getElementById("sendMessageBtn");

sendMessageBtn.addEventListener("click", function () {

    if (contactName.value.trim() === "") {
        alert("Please enter your name");
        return;
    }

    if (contactEmail.value.trim() === "") {
        alert("Please enter your email");
        return;
    }

    if (!contactEmail.value.includes("@")) {
        alert("Please enter a valid email");
        return;
    }

    alert("Message sent successfully ❤️");
});



// Counter Animation

const clientsCounter = document.getElementById("clientsCounter");
const projectsCounter = document.getElementById("projectsCounter");
const hoursCounter = document.getElementById("hoursCounter");
const workersCounter = document.getElementById("workersCounter");

const counters = [
    clientsCounter,
    projectsCounter,
    hoursCounter,
    workersCounter
];

function startCounter(counter) {

    const target = Number(counter.textContent);
    let current = 0;

    const increment = target / 100;

    const updateCounter = setInterval(function () {

        current += increment;

        if (current >= target) {
            current = target;
            clearInterval(updateCounter);
        }

        counter.textContent = Math.floor(current);

    }, 20);
}

const hoursSection = document.getElementById("Hours");

const observer = new IntersectionObserver(function (entries) {

    if (entries[0].isIntersecting) {

        counters.forEach(function (counter) {
            startCounter(counter);
        });

        observer.unobserve(hoursSection);
    }

});

observer.observe(hoursSection);
