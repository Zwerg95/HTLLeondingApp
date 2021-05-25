class User {
    constructor(lat, long, error = null) {
        this.lat = lat;
        this.long = long;
        this.error = error;
    }

    static Error(message) {
        return new User(null, null, message);
    }
}
function loadGeoLocation(success, error, loaded) {
    if (!sessionStorage.getItem('user')) {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(success, error);
        } else {
            error();
        }
    } else {
        loaded();
    }
}

async function getUserLocation(user) {
    if (!user)
        user = await getUser();
    if (user.error && user.error.length > 0) {
        return user.error;
    }
    return `Lat: ${user.lat.toFixed(5)}, Long: ${user.long.toFixed(5)}`;
}

function getUser() {
    return new Promise((resolve) => {
        loadGeoLocation(
            (pos) => {
                let user = new User(pos.coords.latitude, pos.coords.longitude);
                sessionStorage.setItem('user', JSON.stringify(user));
                resolve(user);
            },
            () => {
                let user = User.Error('No Location Available');
                sessionStorage.setItem('user', JSON.stringify(user));
                resolve(user);
            },
            () => {
                let user = JSON.parse(sessionStorage.getItem('user'));
                resolve(user);
            }
        );
    });
}

if (window.location.href.includes("offies.html")) {
    window.onload = () => {
        getUserLocation().then(loc => {
            document.getElementById('location-message').innerText = loc;
        })
    };
}